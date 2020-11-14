#ifndef _PRIMES_H_
#define _PRIMES_H_

// If a new field arithmetic will be used, just add it but taking in count that it is required:
//         fp_add(output, input_x, input_y),
//         fp_sub(output, input_x, input_y),
//         fp_mul(output, input_x, input_y),
//         fp_sqr(output, input_x),
//         fp_inv(input), 
//         fp_issquare(input), and
//         fp_random(input);
// This above functions must be implemented allowing that the output variable can be one of the inputs.

#if defined P512
	#define N 74                    // number of small odd primes l_i's in the factirization of (p+1)
	#define NUMBER_OF_WORDS 8       // Number of 64-bit words
	#define suffix "p512\0"

#elif defined P1024
	#define N 130                   // number of small odd primes l_i's in the factirization of (p+1)
	#define NUMBER_OF_WORDS 16      // Number of 64-bit words
	#define suffix "p1024\0"

#elif defined P1792
	#define N 207                   // number of small odd primes l_i's in the factirization of (p+1)
	#define NUMBER_OF_WORDS 28      // Number of 64-bit words
	#define suffix "p1792\0"

#elif defined P2048
	#define N 231                   // number of small odd primes l_i's in the factirization of (p+1)
	#define NUMBER_OF_WORDS 32      // Number of 64-bit words
	#define suffix "p2048\0"

#elif defined P3072
	#define N 326                   // number of small odd primes l_i's in the factirization of (p+1)
	#define NUMBER_OF_WORDS 48      // Number of 64-bit words
	#define suffix "p3072\0"

#elif defined P4096
	#define N 417                   // number of small odd primes l_i's in the factirization of (p+1)
	#define NUMBER_OF_WORDS 64      // Number of 64-bit words
	#define suffix "p4096\0"

#elif defined P5120
	#define N 504                   // number of small odd primes l_i's in the factirization of (p+1)
	#define NUMBER_OF_WORDS 80      // Number of 64-bit words
	#define suffix "p5120\0"

#elif defined P6144
	#define N 590                   // number of small odd primes l_i's in the factirization of (p+1)
	#define NUMBER_OF_WORDS 96      // Number of 64-bit words
	#define suffix "p6144\0"

#elif defined P8192
	#define N 757                   // number of small odd primes l_i's in the factirization of (p+1)
	#define NUMBER_OF_WORDS 128      // Number of 64-bit words
	#define suffix "p8192\0"

#elif defined P9216
	#define N 838                    // number of small odd primes l_i's in the factirization of (p+1)
	#define NUMBER_OF_WORDS 144      // Number of 64-bit words
	#define suffix "p9216\0"

#endif

#endif
