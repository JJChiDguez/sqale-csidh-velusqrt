# Large-prime Kuberberg Sieve Cost Estimator #

This code estimates the costs to find a hidden shift of an imaginary quadratic order, i.e., to break CSIDH and related schemes, under a range of depth limits. 

To run:

`python3 c-sieve-estimator.py`

This will first validate the number of oracle calls and collimations against Peikert's results, then produce two csv files, "sieve_costs.csv" and "sieve_costs_dw.csv". The first optimizes for the total number of logical gates, and the second optimizes for depth * width. 

In either case, the outputs are (all in log base 2 unless specified otherwise):

- Prime: The bit-length of the prime field (so the class group has a size with half of this bitlength)
- MaxDepth: The maximum depth allowed for this instance
- Gates/DW-cost: The total cost in logical gates, or units of logical depth * width (including a 2^10 overhead for error correction)
- Depth: The total circuit depth
- Width: Total number of logical qubits
- Oracle calls: Total number of oracle calls (evaluation of the isogeny action in superposition) 
- Sieve depth: The height of the tree of collimations, not expressed in log base 2
- Collimations: Total number of collimations
- Vector length: The length of phase vectors input into each collimation. This is also the number of phases that must be stored in classical memory. Note that this means each phase vector requires this many qubits (i.e., "25" means 25 qubits needed, but this stores a superposition of 2^25 phases, which must all be stored in classical memory).
- Arity: The arity of the tree of collimations, meaning the number of phase vectors that are collimated simultaneously.

## Script details ## 
`Estimate_and_write` organizes the estimate: For all primes in a range, it calls `CSIDH_depth_costs` to return a list of estimates at different depths. `CSIDH_depth_costs` iterates over all possible vector lengths L and arities r, checks the cost, and saves the lowest cost. For each value, it calls `CSIDH_break_cost`, which computes the number of full sieve runs needed until the remaining bits can be solved with a brute-force search, then computes the cost of each run with `depth_limited_cost`. `depth_limited_cost` computes the cost of a sieve under a depth limit, arranging how to parallelize collimations and oracle calls.

The main data structure is `QuantumCost`, which stores the gates, depth, width, and ancilla of a quantum operation. These can be combined in serial or parallel. 

To find collimation costs, the script fills two global dictionaries, `lookup_costs` and `unlookup_costs`, which give the optimal look-up costs subject to depth constraints. Once these are filled, it will reference them until it is finished estimates for a particular prime size.

## Magic Constants ##

The script has several parameters, set as constants at the beginning of the script. 

- COST_METRIC: Do we count all gates equally (set COST_METRIC = ALL_GATES), or only count T gates (set COST_METRIC = T_GATES)?
- COST_MODEL: Do we optimize for G-cost or DW-cost?
- LOG_ADD_THRESHOLD: All arithmetic is done with numbers expressed as log base 2. The `log_add` function computes `lg(2^x+2^y)` for x and y, but if `|x - y| >= LOG_ADD_THRESHOLD` then it simply returns the larger number.
- QUANTUM_OVERHEAD: When computing DW cost from a `QuantumCost` object, it adds this overhead to represent error correction.
- Gate constants: These are the costs for fundamental gates, such as Toffoli, Swap, or CNOT. Mainly these are helpful when switching between costing only T gates or all gates.
- SPATIAL_CONSTANT and SPATIAL_EXPONENT: For access to n bits of memory, it adds a depth of (SPATIAL_CONSTANT * n)^SPATIAL_EXPONENT, to represent latency.


## Modifications ## 
To test other prime sizes, change `p_range` at line 787. We suspect that the optimal arity for almost all use cases will be r=2. If you agree, then to save computation time, reduce the size of `r_range`, since the script checks all values of r exhaustively.

The function `get_oracle_cost` returns the cost of the oracle. Currently it returns a a cost of 1 gate, but could be modified to return a real cost.