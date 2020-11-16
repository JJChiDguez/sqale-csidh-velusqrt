# Intention:
# To provide non-exact estimates of security for CSIDH over large primes (> 2000 bits)
# Written for readability over speed

# Mostly replicates Peikert's 2020 paper: https://eprint.iacr.org/2019/725

# Unless specified otherwise, all variables represent the logarithm of the relevant number

import math
import copy
from collections import OrderedDict
from bisect import bisect_right

# Global constants for the cost metric
# (this just fakes an Enum type)
ALL_GATES = 0
T_GATES = 1

G_COST = 0
DW_COST  = 1

# Setting the default cost metric/model
COST_METRIC = ALL_GATES
COST_MODEL = G_COST



############################# GLOBAL PARAMETERS ##################################
# Parameters for the estimation for which 
#   a) one can reasonably argue for different values
#   b) they may have a small or large effect on the results


# What is the cost of a single DW-cost unit (a qubit-cycle) compared to
# a single classical operation?
QUANTUM_OVERHEAD = 10




# Maximum allowable quantum memory
MAX_CLASSICAL_MEMORY = 80
MAX_QUANTUM_MEMORY = MAX_CLASSICAL_MEMORY - QUANTUM_OVERHEAD * 2.0/3.0


# Cost of a CSIDH oracle
# Currently a deliberate underestimate
def get_oracle_cost(N, depth_limit):
	# Single phase of size lg(N) for width;
	# "ancilla" of lg(N) as a minimum for the cost
	width = 1 + log2(N)
	gates = 0
	depth = 0
	ancilla = -float('inf')
	# # Bernstein et al. (Eurocrypt 2020) give a circuit
	# # for the group action of CSIDH-512 with 2^40 gates. Assuming
	# # that the cost scales quadratically with the group,
	# # then the cost below gives the number of gates,
	# # where the depth and ancilla assume perfect parallelization.
	# gates = 56 + 2 * N/256
	# depth = min(gates, depth_limit)
	# ancilla = gates - depth
	return QuantumCost(depth, width, gates, ancilla)

# Memory access to N bits costs (SPATIAL_CONSTANT*N)^SPATIAL_EXPONENT
SPATIAL_CONSTANT = math.log(100.0,2.0)
SPATIAL_EXPONENT = 0.5

############################# FIXED CONSTANTS ##################################
# These are constants based on, e.g., the number of CNOT gates in a Toffoli
# and should not need to be changed.

# Global constants for costs of fundamental gates
if COST_METRIC == T_GATES:
	TOFFOLI_GATES = math.log(4, 2.0)
	TOFFOLI_DEPTH = 0
	CSWAP_GATES = TOFFOLI_GATES
	CSWAP_DEPTH = TOFFOLI_DEPTH
	AND_GATES = math.log(4, 2.0)
	AND_DEPTH = 0
	UNAND_GATES = -LOG_ADD_THRESHOLD # 0 t-gates
	UNAND_DEPTH = -LOG_ADD_THRESHOLD # 0 t-gates
	BOTH_AND_GATES = AND_GATES
	BOTH_AND_DEPTH = AND_DEPTH
	CNOT_GATE = -float('inf')
	CNOT_DEPTH = -float('inf')
else:
	TOFFOLI_GATES = math.log(25, 2.0)
	TOFFOLI_DEPTH = math.log(7, 2.0)
	CSWAP_GATES = math.log(27, 2.0)
	CSWAP_DEPTH = math.log(9, 2.0)
	AND_GATES = math.log(15, 2.0)
	AND_DEPTH = math.log(8, 2.0)
	UNAND_GATES = math.log(5, 2.0)
	UNAND_DEPTH = math.log(3, 2.0)
	BOTH_AND_GATES = math.log(20, 2.0)
	BOTH_AND_DEPTH = math.log(11, 2.0)
	CNOT_DEPTH = 0
	CNOT_GATE = 0



#For comparing costs (if they are within TOLERANCE, they are considered equal)
TOLERANCE = 0.01

# Threshold to stop trying to do exact logarithmic addition
LOG_ADD_THRESHOLD = 5

#########################################################
# Functions to perform arithmetic on data where x represents 2^x

def log2(x):
	if x <= 0:
		return -float('inf')
	else:
		return math.log(x, 2.0)

def log_multiply(x, y):
	return x+y

# log(x+y) = log(x) + log(1+y/x)
def log_add(x, y):
	z = max(x,y)
	w = min(x,y)
	if z - w > LOG_ADD_THRESHOLD:
		return z
	return z + log2( 1 + 2 ** (w - z))

def log_subtract(x, y):
	if x <= y:
		return - float('inf')
	if x - y > LOG_ADD_THRESHOLD:
		return x
	return x + log2(1 - 2 ** (y - x))


def log_add_multi(values):
	values.sort()
	result = values[0]
	for i in range(1,len(values)):
		result = log_add(result, values[i])
	return result

#########################################################
# Data type for quantum costs
#########################################################
# Width: the inputs and outputs
# Ancilla: Temporary qubits
class QuantumCost:
	def __init__(self, depth, width, gates, ancilla = -float('inf'), classical_width = -float('inf'), details = None):
		self.depth = depth
		self.width = width
		self.gates = gates
		self.ancilla = ancilla
		self.classical_width = classical_width
		self.details = details

	def __repr__(self):
		result =  "\n  COST:\t" + str(get_cost(self)) + "\n  Gates:\t" + str(self.gates) + "\n  Depth:\t" + str(self.depth) + "\n  Qubits\n    Qubits:\t" + str(self.width) + "\n    Ancilla:\t" + str(self.ancilla) + "\n    Memory:\t" + str(self.classical_width) + "\n"
		if self.details:
			for key in self.details.keys():
				result += "\n  " + key + ":\t" + self.details[key]
		return result + "\n"

	def total_hardware(self):
		if self.width == float('inf') or self.ancilla == float('inf') or self.classical_width == float('inf'):
			return float('inf')
		return log_add_multi([self.width + QUANTUM_OVERHEAD * 2.0/3.0, self.ancilla + QUANTUM_OVERHEAD * 2.0/3.0, self.classical_width])


def max_cost():
	return QuantumCost(float('inf'), float('inf'), float('inf'), float('inf'), float('inf'))

def empty_cost():
	return QuantumCost(-float('inf'), -float('inf'), -float('inf'))

def merge_details(details1, details2):
	if details1:
		if details2:
			return {**details1, **details2}
		else:
			return details1
	else:
		return details2

#Cost of two sequential operations
# Assume both are out-of-place, i.e., we can't reuse quantum inputs/outputs
# Assumes classical memory can be reused, however
def sequential_cost(cost1, cost2):
	return QuantumCost(
		log_add(cost1.depth, cost2.depth),
		log_add(cost1.width, cost2.width),
		log_add(cost1.gates, cost2.gates),
		max(cost1.ancilla, cost2.ancilla),
		max(cost1.classical_width, cost2.classical_width),
		merge_details(cost1.details, cost2.details)
		)

def sequential_cost_in_place(cost1, cost2):
	return QuantumCost(
		log_add(cost1.depth, cost2.depth),
		max(cost1.width, cost2.width),
		log_add(cost1.gates, cost2.gates),
		max(cost1.ancilla, cost2.ancilla),
		max(cost1.classical_width, cost2.classical_width),
		merge_details(cost1.details, cost2.details)
		)


def parallel_cost(cost1, cost2):
	return QuantumCost(
		max(cost1.depth, cost2.depth),
		log_add(cost1.width, cost2.width),
		log_add(cost1.gates, cost2.gates),
		log_add(cost1.ancilla, cost2.ancilla),
		log_add(cost1.classical_width, cost2.classical_width),
		merge_details(cost1.details, cost2.details)
	)



#Assume inputs become outputs
def sequential_repeat(cost, iterations):
	return QuantumCost(
		iterations + cost.depth,
		cost.width,
		iterations + cost.gates,
		cost.ancilla,
		cost.classical_width,
		cost.details
	)

def parallel_repeat(cost, iterations):
	return QuantumCost(
		cost.depth,
		iterations + cost.width,
		iterations + cost.gates,
		iterations + cost.ancilla,
		iterations + cost.classical_width,
		cost.details
	)


# For DW-cost
def get_cost(cost):
	# if log_add(log_add(cost.width, cost.ancilla) + 2.0*QUANTUM_OVERHEAD/3.0, cost.classical_width) > MAX_CLASSICAL_MEMORY:
	# 	return float('inf')
	if COST_MODEL == G_COST:
		return cost.gates
	else:
		return max(cost.gates, cost.depth + log_add(cost.width, cost.ancilla) + QUANTUM_OVERHEAD)

# Returns True if cost1 < cost2, false otherwise
def cost_compare(cost1, cost2):
	if cost_comparator(cost1, cost2) > 0:
		return True
	else:
		return False


# Genuine comparator: returns 1 if cost1 < cost2, -1 if cost2 < cost1, 0 otherwise
# First checks the global cost metric (gates or DW); if this is equal 
# it checks width; if those are equal, it checks gates
# All comparisons are done within the global TOLERANCE parameter
# (so equality is technically not transitive)
def cost_comparator(cost1, cost2):
	comp = compare_with_tolerance(get_cost(cost1), get_cost(cost2))
	if comp==0:
		hardware_compare = compare_with_tolerance(cost1.total_hardware(), cost2.total_hardware())
		if hardware_compare==0:
			return compare_with_tolerance(cost1.gates, cost2.gates)
		else:
			return hardware_compare
	else:
		return comp

def compare_with_tolerance(item1, item2):
	if item1 == float('inf'):
		if item2 == float('inf'):
			return 0
		else:
			return -1
	elif item2 == float('inf'):
		return 1
	if item1 - item2 < -TOLERANCE:
		return 1
	elif item2 - item1 < -TOLERANCE:
		return -1
	else:
		return 0


#######################################################

class DepthError(Exception):
	pass


# Returns the value c_r^-1, representing the bias 
# to expected values (see appendix)
COLLIMATION_ADJUSTORS = [0]*50
COLLIMATION_ADJUSTORS[2] = -log2(1.5)
for exp_r in range(3,50):
	COLLIMATION_ADJUSTORS[exp_r] = -0.5 * log2(exp_r * math.pi/3)

def collimation_adjustor(exp_r):
	return COLLIMATION_ADJUSTORS[exp_r]
	# if exp_r > 2:
	# 	return -0.5 * log2(exp_r * math.pi/3)
	# else:
	# 	return -log2(1.5)


# Returns the depth of an r-ary tree
# that starts with height-N phase vectors
# and collimates then to height-S0
# Returned NOT in log_2
def get_tree_depth_EXP(N, L, S0, exp_r):
	# Lengths of collimated vectors are biased to
	# the expected value
	# See footnote 7 of Peikert 2020
	
	# Each layer reduces the size by a multiplicative factor of L^{r-1}*adjustor
	# We start with a size of N, we want it to reach S0
	d = max(0, math.ceil((N - S0) / ((exp_r - 1) * L + collimation_adjustor(exp_r))))
	return int(d)

# Returns the total size of the tree,
# i.e., the total number of colimations
def log_tree_size(exp_arity, exp_depth):
	cost = 0
	arity = log2(exp_arity)
	for i in range(exp_depth):
		cost = log_add(cost, i*arity)
	return cost

#Returns the cost of each collimation step
def get_collimation_cost(L,exp_r, EXP_phase_size, depth_budget):
	#Main cost: the QRAM look-ups
	
	Lmax = 3.0 + L; #Lmax = 8L
	# Following Equation 3.5 from Peikert 2020

	# Cost to compute the permutation (either classical or quantum)
	permutation_cost = collimation_permutation_cost(depth_budget-1, L, EXP_phase_size, exp_r)
	if permutation_cost.depth > depth_budget:
		raise DepthError('Cannot merge lists')
	# Remaining depth
	depth_budget = log_subtract(depth_budget, permutation_cost.depth)

	# Measure and compute the permutation (negligible)
	# (1) One look-up for the new value of j (indexed by (j_1,...,j_r))
	# (2) One uncompute lookup for the old values of j
	# (3) One uncompute look-up for the value of b(j) for the new j

	# Since the look-up won't always fit the depth budget, tests values until it fits
	depth = depth_budget + 1
	internal_depth_budget = depth_budget
	while depth > depth_budget and internal_depth_budget > exp_r: 
		log3 = log2(3.0)
		cost1 = get_lookup_cost(Lmax, log2(Lmax),  internal_depth_budget - log3)
		cost2 = get_unlookup_cost(Lmax,  internal_depth_budget - log3)
		cost3 = get_unlookup_cost(Lmax,  internal_depth_budget - log3)
		depth = log_add(log_add(cost1.depth, cost2.depth), cost3.depth)
		internal_depth_budget -= 1
	#Total look-up cost
	cost = sequential_cost(cost1, sequential_cost(cost2, cost3))
	cost.width = log_add(log2(Lmax), log2(EXP_phase_size)) + log2(exp_r)


	return sequential_cost(cost, permutation_cost)


# Adjusts classical cost to ensure it includes latency terms and
# fits a depth budget
def adjust_classical_cost(cost, depth_budget):
	# Latency
	latency = (cost.classical_width + SPATIAL_CONSTANT) * SPATIAL_EXPONENT
	# Depth must below the budget, but at least equal to the latency
	cost.depth = max(min(cost.gates, depth_budget), latency)
	# If we were forced to parallelize, bump up the width. 
	parallelizing_width = max(cost.gates - cost.depth, 0)
	parallelizing_latency = (parallelizing_width + SPATIAL_CONSTANT) * SPATIAL_EXPONENT
	# Add to the cost
	cost.classical_width = log_add(cost.classical_width, parallelizing_width)
	cost.depth = log_add(cost.depth, parallelizing_latency)
	# If it's too deep:
	if cost.depth > depth_budget:
		cost = max_cost()
	return cost

def collimation_permutation_cost(depth_budget, table_size, EXP_phase_size, exp_r):
	phase_size = log2(EXP_phase_size)
	r = log2(exp_r)
	index_size = log2(table_size)

	# Classical approach
	# Assume "depth" is a square root  (for latency)
	classical_cost =  QuantumCost(
		0, #depth
		0, # width
		table_size * (exp_r - 1) + index_size, # gates
		-float('inf'),
		table_size + r + phase_size, # minimum classical width
		details = {"permutation":"basic"}
	)
	classical_cost = adjust_classical_cost(classical_cost, depth_budget)

	grover_cost = get_grover_cost(depth_budget, table_size, EXP_phase_size, exp_r)
	#Classical merging approach
	s = math.floor(exp_r/2)
	merge_cost = QuantumCost(
		0,
		0, 
		log_add(table_size * (exp_r - s) + log2(s) + index_size, s * table_size + log2(s) + index_size),
		-float('inf'),
		log_add(table_size*s, (exp_r - s) + table_size) + phase_size,  # classical width
		details = {"permutation":"merge"}
	)
	merge_cost = adjust_classical_cost(merge_cost, depth_budget)

	# Return cheapest cost
	if cost_compare(merge_cost, classical_cost):
		classical_cost = merge_cost

	if cost_compare(classical_cost, grover_cost):
		return classical_cost
	else:
		return grover_cost

def get_grover_cost(depth_budget, table_size, EXP_phase_size, exp_r):
	phase_size = log2(EXP_phase_size)
	r = log2(exp_r)
	index_size = log2(table_size)
	# Quantum approach
	# Get costs to look-up and un-lookup all the phases
	# Use shortest depth known
	if not (table_size, phase_size) in lookup_costs:
		get_lookup_cost(table_size, phase_size, depth_budget)
	key_list = list(lookup_costs[(table_size, phase_size)].keys())
	lookup_cost = parallel_repeat(lookup_costs[(table_size, phase_size)][key_list[0]], r)
	if not (table_size in unlookup_costs):
		get_unlookup_cost(table_size, depth_budget)
	key_list = list(unlookup_costs[table_size].keys())
	grover_oracle = sequential_cost(lookup_cost, parallel_repeat(unlookup_costs[table_size][key_list[0]], r))
	# Addition costs (log-depth, linear cost in the phase size)
	grover_oracle = sequential_cost(lookup_cost, 
		QuantumCost(log2(r) + log2(phase_size), r + index_size, r + phase_size, r + phase_size)
		)
	# This is how many iterations we are allowed 
	grover_iterates = depth_budget - grover_oracle.depth
	# How much parallelism will be required
	# Search space is L^r, but there are ~L solutions
	grover_parallelism = ((exp_r - 1) * table_size / 2.0) - grover_iterates
	# Cost of each machine for one run
	grover_cost = sequential_repeat(grover_oracle, grover_iterates)
	# Cost to find one solution
	grover_cost = parallel_repeat(grover_cost, grover_parallelism)
	# Cost for all solutions (coupon collection)
	grover_cost = parallel_repeat(grover_cost, table_size + index_size) 

	# Latency
	grover_cost.depth = log_add(grover_cost.depth, SPATIAL_EXPONENT * (SPATIAL_CONSTANT + log_add(grover_cost.width, grover_cost.ancilla)))
	grover_cost.details = {"permutation":"grover"}
	return grover_cost

######################### QRAM Costs #########################################

# Global dictionaries to avoid recomputation
# These are dictionaries indexed by (table_size, word_size) and (table_size), respectively
# Each entry is a dictionary of costs, keyed by depth, with keys in sorted order
lookup_costs = dict()
unlookup_costs = dict()


# Finds the cost to look up words of size word_size in a table of size table_size,
# subject to a depth constraint
# Checks all possible look-up methods and finds the cheapest one that fits the
# depth budget
def get_lookup_cost(table_size, word_size, depth_budget):
	if (table_size, word_size) in lookup_costs:
		key_list = list(lookup_costs[(table_size, word_size)].keys())
		index = bisect_right(key_list, depth_budget) - 1
		depth = key_list[index]
		return lookup_costs[(table_size, word_size)][depth]
	else:
		# First, build a dictionary of the costs of all QRACM lookup methods
		cost_dict = OrderedDict()
		# Babbush et al. 
		basic_cost = get_basic_lookup_cost(table_size, word_size)
		# New wide method
		wide_cost = get_wide_lookup_cost(table_size, word_size)
		cost_dict[basic_cost.depth] = basic_cost
		cost_dict[wide_cost.depth] = wide_cost
		# Berry et al. method for various k
		for k  in range(0, int(table_size)):
			k_cost = get_berry_lookup_cost(table_size, word_size, k)
			# If we already had this key, only insert a new one if it's
			# cheaper
			if k_cost.depth in cost_dict.keys():
				if cost_compare(k_cost, cost_dict[k_cost.depth]):
					cost_dict[k_cost.depth] = copy.deepcopy(k_cost)
			else:
				cost_dict[k_cost.depth] = copy.deepcopy(k_cost)
		# Sort the keys, remove suboptimal methods
		lookup_costs[(table_size, word_size)] = cleanup_cost_dict(cost_dict)
		return get_lookup_cost(table_size, word_size, depth_budget)



# Finds the cost to uncompute values from a table
# Follows the same logic as get_lookup_cost
def get_unlookup_cost(table_size, depth_budget):
	if table_size in unlookup_costs:
		key_list = list(unlookup_costs[table_size].keys())
		index = bisect_right(key_list, depth_budget) - 1
		depth = key_list[index]
		return unlookup_costs[table_size][depth]
	else:
		cost_dict = OrderedDict()
		basic_cost = get_basic_lookup_cost(table_size, 0)
		wide_cost = get_wide_lookup_cost(table_size, 0)
		cost_dict[basic_cost.depth] = basic_cost
		cost_dict[wide_cost.depth] = wide_cost
		for k  in range(0, int(table_size)):
			k_cost = get_berry_unlookup_cost(table_size, k)
			if k_cost.depth in cost_dict.keys():
				if cost_compare(k_cost, cost_dict[k_cost.depth]):
					cost_dict[k_cost.depth] = copy.deepcopy(k_cost)
			else:
				cost_dict[k_cost.depth] = copy.deepcopy(k_cost)
		unlookup_costs[table_size] = cleanup_cost_dict(cost_dict)
		return get_unlookup_cost(table_size, depth_budget)


#Iterates through a dictionary keyed by depth
# and returns a new dictionary where the keys are
# sorted, with the property that if 
# depth1 < depth2, then 
# cost(dict[depth1]) >= cost(dict[depth2])
def cleanup_cost_dict(cost_dict):
	new_dict = OrderedDict()
	original_depths = sorted(cost_dict.keys())
	min_cost = max_cost()
	for depth in original_depths:
		if cost_compare(cost_dict[depth], min_cost):
			min_cost = cost_dict[depth]
			new_dict[depth] = cost_dict[depth]
	return new_dict


def get_wide_lookup_cost(table_size, word_size):
	# table_size ANDs (both ways) to fan out controls
	# 2* table_size * (word_size/2) CNOTS to write the words into place
	log_table_size = log2(table_size)
	gates = table_size + log_add(3 + BOTH_AND_GATES, log_add(log2(11) + CNOT_GATE, 1 + CSWAP_GATES) + word_size)
	depth = log_add(
				log_table_size + log_add(
					log_add(1 + BOTH_AND_DEPTH, 0),
					log_add(log_add(log2(word_size) + 1, 0) + CNOT_DEPTH, CSWAP_DEPTH)
				),
				1 + log2(word_size - 1)
			)
	# We also have to fanout the controls, adding to the width
	width = log_add(word_size, log_table_size)
	ancilla = table_size + log_add(log2(1.5) + log_add(word_size, 0), log_subtract(log_table_size, 1))
	return QuantumCost(depth, word_size, gates, ancilla, details = {"Lookup": "wide"})

def get_wide_unlookup_cost(table_size, word_size):
	# Assume we measure the outputs in the X-basis
	# Then we need to uncompute, on average, half the words
	# And the "output" is only a single bit
	return get_wide_lookup_cost(table_size - 1, 0)

# Berry et al. look-up technique
def get_berry_lookup_cost(table_size, word_size, k):
	width = log_add(word_size, log2(table_size))
	# Cost of the first look-up gate
	first_In_gates = table_size - k + log_add(BOTH_AND_GATES, word_size + k +log2(1.5) + CNOT_GATE)
	first_In_depth = table_size - k + log_add(BOTH_AND_DEPTH, log2(k + word_size - 1) + 1 + CNOT_DEPTH)
	kmin1 = log_subtract(k, 0)
	first_S_gates = word_size + log_add(1+ k + CNOT_GATE, kmin1 + CSWAP_GATES)
	# Fan out these swaps: This is all CNOTs, then one final round of swaps
	first_S_depth = log2(k) + log_add(log_add(log2(kmin1 + 2 * word_size), 0) + CNOT_DEPTH , CSWAP_DEPTH)
	gates = log_add(first_In_gates, first_S_gates)
	depth = log_add(first_In_depth, first_S_depth)
	uncost = get_unlookup_cost(table_size, depth)
	gates = log_add(gates, uncost.gates)
	depth = log_add(depth, uncost.depth)
	ancilla = max(k + word_size, uncost.ancilla) # Uncomputation uses no extra input/output
	return QuantumCost(depth, width, gates, ancilla, details={"Lookup": "berry-"+str(k)})

# Berry et al. un-lookup
def get_berry_unlookup_cost(table_size, k):
	width = log2(table_size)	
	# In is a single basic look-up
	In_gates = table_size - k + log_add(BOTH_AND_GATES, k + log2(1.5) + CNOT_GATE)
	In_depth = table_size - k + log_add(BOTH_AND_DEPTH, log2(k - 1) + 1 + CNOT_DEPTH)
	kmin1 = log_subtract(k, 0)
	S_gates = 1 + kmin1 + log_add(CSWAP_GATES, 1 + CNOT_GATE)
	S_depth = 1 + log2(k) + log_add(log_add(log2(k),0) + CNOT_DEPTH, CSWAP_DEPTH)
	gates = log_add(In_gates, S_gates)
	depth = log_add(In_depth, S_depth)
	ancilla = k
	return QuantumCost(depth, width, gates, ancilla, details={"Lookup":"berry-"+str(k)})

		
# Babbush et al. look-up
def get_basic_lookup_cost(table_size, word_size):
	return QuantumCost(
		table_size + log_add(BOTH_AND_DEPTH, 1 + log2(word_size - 1) + CNOT_DEPTH), # depth
		log_add(log2(table_size), log2(word_size)),
		table_size + log_add(BOTH_AND_GATES, log2(1.5) + word_size + CNOT_GATE),
		log2(table_size),
		details={"Lookup":"basic"}
	)

########################### FULL COLLIMATION SIEVE COSTS ####################################


# Gets the cost of the entire attack under a depth limit,
# with pre-specified parameters L, S0, and exp_r
# 
# Inputs
# depth_limit: Log_2 of the depth limit of the entire attack
# N: Log_2 of the group order
# L: log_2 of the "length" (roughly equal to QRAM cost)
# S0: log_2 of the final "height" to reach
# exp_r arity of the collimation tree (NOT logarithmic)
def depth_limited_cost(depth_limit, N, L, S0, exp_r):
	# Discard probability
	delta = 0.02

	sieve_details = dict()

	# Active qubits to store the phase vector
	# Since we store the phase multipliers in quantum memory continously,
	# it contains N
	phase_vector_qubits = log2(L + N) 

	exp_sieve_depth = get_tree_depth_EXP(N, L, S0, exp_r)

	#Base layer L: Must be larger for the collimation
	# First we need the height of the states just below
	adjustor = collimation_adjustor(exp_r)
	first_height = S0  + (exp_sieve_depth - 1) * ((exp_r - 1) * L + adjustor)
	Lbase = (1.0/exp_r) * (L + N - first_height)

	# This is the number of leaves of the collimation tree
	# Each layer is r-ary, except the last layer, which is log(L)-ary,
	# since we need to produce an initial phase vector of length L from 
	# phase vectors of length 2
	num_oracle_calls = exp_sieve_depth * log2(exp_r) + log2(Lbase) 
	# But each oracle call has some probability of failure:
	num_oracle_calls -= exp_sieve_depth * log2(1.0 - delta)
	# Extra factor 2^0.3 from Peikert:
	num_oracle_calls += 0.3
	# If exp_sieve_depth is the height of the collimation tree, we need at least exp_sieve_depth sequential sieving steps
	# Thus a single sieve must fit in this budget
	sieve_depth_budget = depth_limit - log2(exp_sieve_depth)
	if sieve_depth_budget < 0:
		raise DepthError('Depth limit way too small')
	# Cost for a single collimation
	# Each phase goes up to N, so that is the size of b(j)
	sieve_cost = get_collimation_cost(L, exp_r, log2(N), sieve_depth_budget)

	# Double-check that the depth is short enough
	sequential_sieve_depth = sieve_cost.depth + log2(exp_sieve_depth)
	if sequential_sieve_depth > depth_limit:
		raise DepthError('Depth limit too small for L')


	# We now decide how much we need to parallelize to fit the depth limit

	# We have a depth budget of 2^depth_limit. We need 
	# h sequential sieve steps at the end, where h is the height of the collimation tree
	depth_before_final_sieve = log_subtract(depth_limit, sequential_sieve_depth)
	# Within the remaining space, we need to fit all the oracle calls. Thus, this is the number
	# of oracle calls that must happen in parallel in each step
	oracle_cost = get_oracle_cost(N, depth_before_final_sieve)
	if oracle_cost.depth > depth_limit:
		raise DepthError('Depth limit too small for oracle')
	#Find the necessary depth of the tree

	parallel_oracle_calls = num_oracle_calls + oracle_cost.depth - depth_before_final_sieve

	
	# Total number of necessary collimations
	tree_size = log_tree_size(exp_r, exp_sieve_depth)

	#Now, we check if we must parallelize collimation
	naive_collimation_depth = tree_size + sieve_cost.depth

	# Minimum number of vectors to store at once
	vectors_in_memory = log2((exp_r - 1) * exp_sieve_depth)


	parallel_collimation = naive_collimation_depth - log_subtract(depth_limit, oracle_cost.depth)
	#Prevent overparallelizing
	# The most collimations possible at once is the last layer of the tree, which is r^h
	parallel_collimation = min(exp_sieve_depth * log2(exp_r), parallel_collimation)
	parallel_oracle_calls = min(parallel_oracle_calls, num_oracle_calls)

	#Prevent "under"parallelizing
	parallel_oracle_calls = max(parallel_oracle_calls, 0)
	parallel_collimation = max(parallel_collimation, 0)

	
	#If we produce more oracle calls than collimations, we store the extra in memory
	if parallel_oracle_calls - log2(Lbase) > parallel_collimation:
		sieve_details["extra_oracle"] = "True"
		total_oracle_depth = oracle_cost.depth + num_oracle_calls - parallel_oracle_calls
		#How many collimations happen in this time?
		sieve_during_oracle =  (total_oracle_depth - sieve_cost.depth) + parallel_collimation
		# How many vectors does this collimate?
		sieved_vectors = max(sieve_during_oracle + log2(Lbase), num_oracle_calls)
		# How many remain in memory?
		vectors_in_memory = max(vectors_in_memory, log_subtract(num_oracle_calls, sieved_vectors))
	# If the collimator must parallelize, we need more oracle calls
	# (see end of Section III.D)
	if parallel_oracle_calls > 0:
		parallel_oracle_calls = max(parallel_oracle_calls, parallel_collimation + log2(Lbase))

	

	#Assume we repeat the oracles in parallel, then sequentially
	sequential_oracle_calls = num_oracle_calls - parallel_oracle_calls

	total_oracle_costs = parallel_repeat(oracle_cost, parallel_oracle_calls)
	total_oracle_costs = sequential_repeat(total_oracle_costs, sequential_oracle_calls)

	# Find how many parallel repetitions
	sequential_collimation = tree_size - parallel_collimation
	sieve_details["collim-par"] = str(parallel_collimation)

	# In this case, we parallelize so much that we finish the first layer first
	if sequential_collimation < log2(exp_sieve_depth): 
		sieve_details["Excess width"] = "True"
		total_sieve_costs = empty_cost()
		for i in range(exp_sieve_depth):
			total_sieve_costs = sequential_cost_in_place(total_sieve_costs, parallel_repeat(sieve_cost, i * log2(exp_r)))
	else: # Simply collimate as fast as possible		
		total_sieve_costs = parallel_repeat(sieve_cost, parallel_collimation)
		total_sieve_costs = sequential_repeat(total_sieve_costs, sequential_collimation)	
		sieve_details["Excess width"] = "False"

	# Add sieve and oracle costs, assuming they are sequential
	costs = sequential_cost(total_sieve_costs, total_oracle_costs)
	costs.ancilla = log_add(costs.ancilla, vectors_in_memory + phase_vector_qubits)
	costs.details = {**sieve_details, **costs.details}

	return [costs, num_oracle_calls, exp_sieve_depth, tree_size]




# Estimates the total cost to break CSIDH
#
# Inputs:
# - max_depth:  is the maximum allowed depth
# - classical_budget:the amount we expect to solve at
#   the end by brute force
# - p: bit-length of the prime
# - L: "length" of phase vectors (1/8 of QRAM size)
# - r: arity of collimation sieve
def CSIDH_break_cost(max_depth, classical_budget, p, L, exp_r):
	N = p/2.0
	S = L
	bits_per_run = S - 2

	if (N < classical_budget): # We can just break it classically
			c_sieve_cost = [QuantumCost(0,N,0), 0, 0]
	else:
		depth = max_depth + 1
		internal_depth_limit  = max_depth 
		while depth > max_depth and internal_depth_limit > 0:
			c_sieve_cost = depth_limited_cost(internal_depth_limit, N, L, S, exp_r)
			depth = c_sieve_cost[0].depth
			internal_depth_limit -= 1

		# Peikert claims each repetition reveals roughly S - 2 bits of the secret
		# We only need N - classical_budget bits; we brute-force the rest
		# Thus, we need to run the sieve num_repetitions times
		num_repetitions = log2(math.ceil((N - classical_budget)/bits_per_run))
		parallel_reps = num_repetitions + c_sieve_cost[0].depth - max_depth
		if parallel_reps > 0:
			sequential_reps = num_repetitions - parallel_reps
			c_sieve_cost[0] = parallel_repeat(c_sieve_cost[0], parallel_reps)
		else:
			sequential_reps = num_repetitions
			
		c_sieve_cost[0] = sequential_repeat(c_sieve_cost[0], sequential_reps)
		c_sieve_cost[1] += num_repetitions # oracle calls
	  # c_sieve_cost[2] 				   # sieve depth does not change when repeated
		c_sieve_cost[3] += num_repetitions # collimations

	# If we break the loop
	if c_sieve_cost[0].depth > max_depth:
		raise DepthError('Depth ' + str(max_depth) + ' too small for L = ' + str(L))
	return c_sieve_cost

# Tests a prime over a range of max_depth values
# Returns a dictionary of lists; the keys of the dictionary
# are max_depths, and each list is:
# 0: QuantumCost of the c-sieve
# 1: number of oracle calls
# 2: depth of each sieving step
# 3: total number of collimations
# 4: the phase vector length L
# 5: the arity r
def CSIDH_depth_costs(depth_range, classical_budget, p, r_range):
	# How much are we willing to exceed the depth budget?
	tolerance = 0
	results = dict()
	# Reset previous look-up tables 
	lookup_costs = dict()
	unlookup_costs = dict()
	
	# This is the overall best cost for any depth limit
	best_cost = [max_cost(), -1, 0,-1, -1, -1]
	for max_depth in depth_range:
		# Minimum cost for this depth limit
		min_cost = [max_cost(), -1, 0,-1, -1, -1]
		min_L = 10
		max_L = int(1.5*max_depth)
		# Try different memory sizes and arities
		for exp_r in r_range:
			for L in range(min_L, max_L+1):
				try:
					csieve_cost = CSIDH_break_cost(max_depth, classical_budget, p, L, exp_r)
					if csieve_cost[0].depth <= max_depth + tolerance and csieve_cost[0].total_hardware() < MAX_CLASSICAL_MEMORY:
						if cost_compare(csieve_cost[0], min_cost[0]):
							min_cost = csieve_cost + [L, exp_r]
				except DepthError:
					next
			
		

		# Did it find any L,r that fit the depth limit?
		if min_cost[4]>0: 
			# It happens that previous depth limits actually give lower costs
			# This simply uses that new parameterization if so
			# This compares not just the overall cost metric (G- or DW-cost)
			# but if those are equal, also compares qubit count and then gates
			if (cost_compare(best_cost[0], min_cost[0])):
				# The previous best cost was better, so we keep it
				min_cost = best_cost
			elif (cost_compare(min_cost[0], best_cost[0])):
				# We found a new best cost and update
				best_cost = min_cost
			else: # equal costs
				# All else equal, we should minimize oracle costs
				if best_cost[1] - min_cost[1] < -TOLERANCE: 
					min_cost = best_cost
				else:
			 		best_cost = min_cost
			results[max_depth] = copy.deepcopy(min_cost)
		else:
			results[max_depth] = [max_cost(),-1,0,-1,-1,-1]
	return results


############################ FORMATTING #####################################33

# Header for CSV
def CSIDH_costs_head_string():
	head_string =  "Prime, MaxDepth,"
	if COST_MODEL == G_COST:
		if COST_METRIC == T_GATES:
			head_string += "T-gates, "
		else:
			head_string += "Gates, "
	else:
		head_string += "Depth-width, "
	return head_string + "Depth, Total Hardware, Width, Oracle Calls, Sieve Depth, Collimations, Vector Length, Classical Memory, Arity\n"

# Formats costs as CSV, expecting output of CSIDH_depth_costs
def CSIDH_costs_as_string(costs, p, max_depth):
	if costs[0].details:
		detail_string = ""
		for key in costs[0].details.keys():
			detail_string += key + ":" + costs[0].details[key] + ", "
	return (str(p) + ", " + str(max_depth) + ", "
		 + str(get_cost(costs[0])) + ", "
		 + str(costs[0].depth) + ", "
		 + str(log_add(costs[0].width, log_add(costs[0].ancilla, costs[0].classical_width))) + ", "
		 + str(log_add(costs[0].width, costs[0].ancilla)) + ", "
		 + str(costs[1]) + ", "
		 + str(costs[2]) + ", "
		 + str(costs[3]) + ","
		 + str(costs[4]) + ","
		 + str(costs[0].classical_width) + ","
		 + str(costs[5]) + ","
		 + detail_string + "\n")





##############################################

# Validate against Peikert's numbers
def Validate_costs():
	ps = [512, 1024, 1792]
	Ls = [[23.6, 27.4, 31.3, 35.1, 39],
		  [27.4, 31.3, 35.1, 39.0, 42.9],
		  [31.3, 35.1, 39.0, 42.9, 46.7]]
	depths = [[11, 9, 8, 7, 6],
			  [19, 16, 14, 13, 12],
			  [29, 25, 23, 21, 19]]
    # Peikert's actual queries
	queries = [[18.7, 17.0, 15.7, 14.9, 14.1],
			   [27.9, 25.5, 23.5, 22.1, 20.8],
			   [39.2, 35.8, 33.2, 30.9, 29.2]]
	for i in range(len(ps)):
		for j in range(len(Ls[i])):
			sieve_cost = CSIDH_break_cost(200, 56, ps[i], Ls[i][j], 2)
			if sieve_cost[2] != depths[i][j]:
				print("Computed Depth: " + str(sieve_cost[2]))
				print("Expected Depth: " + str(depths[i][j]))
				raise ValueError('Depth incorrect for p = ' + str(ps[i]) + ' and L = ' + str(Ls[i][j]))
			if abs(sieve_cost[1] - queries[i][j]) > 0.1:
				print("Computed Queries: " + str(sieve_cost[1]))
				print("Expected Queries: " + str(queries[i][j]))
				raise ValueError('Queries incorrect for p = ' + str(ps[i]) + ' and L = ' + str(Ls[i][j]))



# Validate_costs()
print("Costs validated")



############ Run full estimation

import csv

def Initialize_file(filename, header):
	output_file = open(filename, 'w')
	output_file.write(header)
	output_file.close()
	return open(filename, 'a')

def Estimate_and_write(
	p_range, 
	depth_range, 
	r_range,
	classical_budget,
	csv_filename
	):
	if COST_MODEL == DW_COST:
		csv_filename += "_dw"
	csv_filename += ".csv"
	csv_file = Initialize_file(csv_filename, CSIDH_costs_head_string())
	for p in p_range:
		print("p = " + str(p))
		costs = CSIDH_depth_costs(depth_range, classical_budget, p, r_range)
		csv_file.write("\n\n" + str(p) + "\n")
		for depth in costs:	
			if not get_cost(costs[depth][0]) == float('inf'):
				csv_file.write(CSIDH_costs_as_string(costs[depth], p, depth))


#Set estimation parameters
classical_budget= 64
depth_range = range(40,97)
r_range = range(2,30)
#p_range = range(2**10, 12288+1, 2**10)
p_range = [1024, 1792, 2048, 3072, 4096, 5120, 6144, 8192, 9216, 12288]
NIST_ps = {0: [1024, 1792, 2048], 1: [3072, 4096], 2:[5120, 6144], 3:[8192, 9216]}
NIST_mem_limits = {0: 80, 1: 80, 2: 80, 3: 80}

for model in [G_COST, DW_COST]:
	COST_MODEL = model
	for level in NIST_ps.keys():
		MAX_CLASSICAL_MEMORY = NIST_mem_limits[level]
		Estimate_and_write(
			NIST_ps[level],
			depth_range,
			r_range,
			classical_budget,
			'sieve_costs_'+str(level))
	MAX_CLASSICAL_MEMORY = float('inf')
	Estimate_and_write(
		p_range, 
		depth_range, 
		r_range, 
		classical_budget, 
		'sieve_costs_unlimited'
		)