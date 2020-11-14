import sys
import json
import random
from functools import reduce
from progress.bar import Bar

bitlength = lambda x: len(bin(x)[2:])                       # number of bits

# --------------------------------------------------------------------------------------------------------------------------------
# Checking if p is composite

def _try_composite(a, d, n, s):
    if pow(a, d, n) == 1:
        return False
    for i in range(s):
        if pow(a, 2**i * d, n) == n-1:
            return False
    return True # n  is definitely composite

def is_prime(n):
    """
    Miller-Rabin primality test.
 
    A return value of False means n is certainly not prime. A return value of
    True means n is very likely a prime.
    """
    if n!=int(n):
        return False
    n=int(n)
    #Miller-Rabin test for prime
    if n==0 or n==1 or n==4 or n==6 or n==8 or n==9:
        return False
 
    if n==2 or n==3 or n==5 or n==7:
        return True
    s = 0
    d = n-1
    while d%2==0:
        d>>=1
        s+=1
    assert(2**s * d == n-1)
 
    def trial_composite(a):
        if pow(a, d, n) == 1:
            return False
        for i in range(s):
            if pow(a, 2**i * d, n) == n-1:
                return False
        return True  
 
    for i in range(128):        #number of trials 
        a = random.randrange(2, n)
        if trial_composite(a):
            return False
 
    return True

# n SOP will be required, and the corresponding prime number must has b bits
if( (len(sys.argv) != 2) ):
    print("  ,-~~-.___.")
    print(" / |  '     \\           SYNTAX ERROR ..., ") 
    print("(  )         0          Expected syntax:\tpython3 b" %sys.argv[0])  
    print(" \_/-, ,----'                           \t\t                     n    ")         
    print("    ====           //                   \t\t                 ~~~~~~~~~")
    print("   /  \-'~;    /~~~(O)                  \t\t                  |     | ")
    print("  /  __/~|   /       |                  \twhere\tp = 2^{MOD x k} x |     | l_j - 1 is a b-bit prime number for some positive integer k")   
    print("=(  _____| (_________|                  \t\t                    j=1")
    exit(-1)

b = int(sys.argv[1]) - 1# Bitlength of p

# ------------------------------------------------------
# List of small odd primes that makes p to fit in b-bits
L = []
l = 3
L.append(l)
while bitlength(4 * reduce(lambda x,y : (x*y), L) - 1) < b:
    l += 1;
    while not is_prime(l):
        l += 1
    L.append(l)
# ------------------------------------------------------
T = list(L)
k = len(T)

print("Number of l_i\'s in the factorization of (p+1):\t%d" % (k-1))
print("Bitlength of the desired prime number p:\t%d " % (b+1))

bar = Bar('Looking for a %d-bit CSIDH prime;' % b, max=k)
# ----------------------------
for i in range(k - 1, -1, -1):

    L = list(T[:i]) + list(T[(i+1):])
    l = L[-1]

    n = len(L)  # Number of small odd primes (sop)
    assert(n == (k-1))
    # ==============================
    # Main loop for the prime search
    bar.next()
    while True:
        # ----------------------------------
        # Now, we take the next prime number
        l += 1;
        while not is_prime(l):
            l += 1

        # ---------------------------
        # Looking for the CSIDH-prime
        for j in range(n - 1, -1, -1):

            tmp = list(L[:j]) +  list(L[(j+1):]) + list([l])
            assert(len(tmp) == n)
            p = 4 * reduce(lambda x,y : (x*y), tmp) - 1

            if  bitlength(p) > b:
                break

            if (bitlength(p) <= b) and ((b - 1) <= bitlength(p)):
                if is_prime(p):
                    break

        # -------------------
        if  bitlength(p) > b:
            break
        # ---------------------------------------------------
        if (bitlength(p) <= b) and ((b - 1) <= bitlength(p)):
            if is_prime(p):
                break
    # ---------------------------------------------------
    if (bitlength(p) <= b) and ((b - 1) <= bitlength(p)):
        if is_prime(p):
            break

# ----------------------------
bar.finish()

print("Reached prime p:\t0x%s" % format(p,"0%dX" % (b/16)))
print("Reached bitlength:\t%s" % bitlength(p))

L = list(tmp)
# Storing the "shape" of p
line_string = ' '.join([str(2)] + [ str(l) for l in L ]) + '\n'
f = open("./tmp/p" + str(b+1), "w")
f.write(line_string)
f.close()
exit(1)
