#ifndef _FP_H_
#define _FP_H_

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <immintrin.h>

#include <assert.h>

#define __STDC_FORMAT_MACROS
#include <inttypes.h>

#include "rng.h"	// Random Number Generator
#include "primes.h"	// Framework: N, prime label, and number of 64-bit words required for representing a field element

// (64 x NUMBER_OF_WORDS)-bits integer number in Montgomery domain
typedef uint64_t fp[NUMBER_OF_WORDS];

// -------------------------------------
// big unsigned add and  sub implementation
extern const fp uintbig_1;

bool uintbig_bit(fp const x, uint64_t k);
bool uintbig_add(fp x, fp const y, fp const z); /* returns carry */
bool uintbig_sub(fp x, fp const y, fp const z); /* returns borrow */

// -------------------------------------
extern const fp p;			// field characteristic
extern const fp fp_1;			// 1 in the Montgomery domain
extern const fp fp_0;			// 0 in the Montgomery domain
extern const fp p_minus_1_halves;	// (p - 1)/2 used for find a random fp element 2 <= u <= (p-1)/2
extern const fp p_minus_3_quarters;	// (p - 3)/4 used in fp2_issquare()

extern uint64_t fpadd;			// counter of fp-additions
extern uint64_t fpsqr;			// counter of fp-squarings
extern uint64_t fpmul;			// counter of fp-multiplications

static inline void init_counters(void)
{
	fpadd = 0;
	fpsqr = 0;
	fpmul = 0;
}

// All operations are perfomed in the Montgomery domain
void fp_enc(fp a, fp const b);			// from fp into Montgomery domain
void fp_dec(fp a, fp const b);			// from Montgomery domain into fp
void fp_cswap(fp a, fp b, uint8_t c);

void fp_add(fp c, const fp a, const fp b);	// a + a
void fp_sub(fp c, const fp a, const fp b);	// a - b
void fp_mul(fp c, const fp a, const fp b);	// a * b
void fp_sqr(fp b, const fp a);			// a ^ 2
void fp_pow(fp b, const fp e, const fp a);	// a ^ e
void fp_inv(fp a);				// 1 / a

uint8_t fp_issquare(fp const a);	// Legendre symbol
void fp_copy(fp b, const fp a);		// copy of elements in fp
void fp_random(fp a);			// this function should be modified in order to have a better random function: e.g., shake256.

// set to zero 
static inline void fp_set0(fp a)
{
	fp_copy(a, fp_0);
}

// set to one 
static inline void uintbig_set1(fp a)
{
	fp_copy(a, uintbig_1);
}

// set to one in mongotmery domnain
static inline void fp_set1(fp a)
{
	fp_copy(a, fp_1);
}

// constant-time check of a < b
static inline uint64_t fp_issmaller(fp const a, fp const b)
{
	int i;
	int64_t r = 0, ab, c;

	for (i = 0; i < NUMBER_OF_WORDS; i++)
	{

		ab = a[i] ^ b[i];
		c = a[i] - b[i];
		c ^= ab & (c ^ a[i]);
		c = (c >> 63);
		r |= c;
	};

	return 1 - (uint64_t)(r + 1);
}

// constant-time check of a == b
static inline uint64_t fp_isequal(fp const a, fp const b)
{
	int i;
	uint64_t r = 0, t;

	for (i = 0; i < NUMBER_OF_WORDS; i++)
	{
		t = 0;
		unsigned char *ta = (unsigned char *)&a[i];
		unsigned char *tb = (unsigned char *)&b[i];
		t = (ta[0] ^ tb[0]) | (ta[1] ^ tb[1]) | (ta[2] ^ tb[2]) |  (ta[3] ^ tb[3]) | (ta[4] ^ tb[4]) | (ta[5] ^ tb[5]) | (ta[6] ^ tb[6]) |  (ta[7] ^ tb[7]);

		t = (-t);
		t = t >> 63;
		r |= t;
	};

	return (uint64_t)(1 - r);
}

// constant-time check of a == 0
static inline int fp_iszero(fp const a)
{
	int i;
	uint64_t c = 0;
	for (i=NUMBER_OF_WORDS-1; i >= 0; i--) 
		c |= a[i];
	return (c == 0);
}

// constant-time check of a == R mod p (one in Montogmery domain)
static inline uint64_t fp_isone(fp const a)
{
	return fp_isequal(a, fp_1);
}

#endif /* fp */
