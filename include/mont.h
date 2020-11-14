#ifndef _MONT_H_
#define _MONT_H_

#include "fp.h"
//#include "sdacs.h"

typedef fp proj[2];	// projective x-coordinate point (X:Z) or projective Montogmery curve coefficient (A':C)

//char *SDACs[N];		// Shortest Differential Additions Chains (SDAC's)
//int LENGTHS[N];		// Size of each shortest Differential Additions Chains (SDAC's)
//uint64_t L[N];		// "2^e" and the Small Odd Primes (SOPs) in the factorization of (p + 1)
//uint64_t bL[N];		// Bitlength of each element in L \ {2^e}
//uint64_t cofactor;	// Power of 2 in the factorization of (p + 1)
//uint64_t UPPER_BOUND;	// For traditional CSIDH primes this value is approximately equals to log2(4 sqrt(p))

void coeff(fp B, proj const A);						// From projective curve coefficients into affine representation
void xadd(proj R, const proj P, proj const Q, proj const PQ);		// Differential point addition
void xdbl(proj Q, const proj P, proj const A);				// Differential point doubling
void xmul(proj Q, uint64_t const i, proj const P, proj const A);	// Differential point multiplication by l_i

// Next functions corresponds to B-SIDH
void xdbladd(proj R, proj S, proj const P, proj const Q, proj const PQ, proj const A);		// For computing x([2]P) and x(P + Q)
void ladder3pt(proj R, fp const m, proj const P, proj const Q, proj const PQ, proj const A);	// For computing x(P + [m]Q)
// Validation for B-SIDH must be implemented (similar validation than SIDH and SIKE cases)

// Next functions corresponds to CSIDH
void elligator(proj Tp, proj Tm, proj const A);					// Random points in E[\pi - 1] and E[\pi + 1]
void cofactor_multiples(proj P[], proj const A, size_t lower, size_t upper);	// For computing [(p + 1) / l_i]P, i:=0, ..., (N - 1)
bool validate(fp const a);							// This function check if A is supersingular

// For computing the bitlength of positive integer
static inline uint64_t bitlength(uint64_t n)
{
	uint64_t count = 0;
	while (n > 0)
	{
		count += 1;
	        n >>= 1;
	}
	return count;
}

/*
// Function to remove all spaces from a given string
static inline int removespace(char *str)
{
	// To keep track of non-space character count
	int count = 0, i;

	// Traverse the given string. If current character
	// is not space, then place it at index 'count++'
	for (i = 0; str[i]; i++)
		if (str[i] != ' ')
			str[count++] = str[i];
	str[count] = '\0';
	return count;
}

// Reading SOPs coded as in the Python-code of "Optimal Strategies for CSIDH"
static inline void read_sops()
{
	FILE *sops;

	// File name must be stored as string
	char prefix[13] = "./src/sop/\0",
	     path[(int)strlen(suffix) + 13 + 1];

	snprintf(path, sizeof(path), "%s%s", prefix, suffix);

	sops = fopen(path, "r");	// reading sdacs
	assert(NULL != sops);		// ensuring the file exists

	int i = 0;
	assert(fscanf(sops, "%lu", &cofactor) > 0); 	// Exponent of 2 in the factorization of (p + 1)
	assert( cofactor >= 2);				// Ensuring p = 3 mod 4
	while (fscanf(sops, "%lu", &L[i++]) != EOF);	// SOPs in the factorization of (p + 1)

	assert(i == (N + 1));			// Ensuring N SOPs have been read them

	UPPER_BOUND = 0;
	for (i = 0; i < N; i++)
	{
		bL[i] = bitlength(L[i]);	// Bitlength of each SOP 
		UPPER_BOUND += bL[i];
	};

	UPPER_BOUND /= 2;	// This corresponds with the bits of sqrt( [p + 1] / [2^e] )
	UPPER_BOUND += 2;	// Bits of 4 * sqrt( [p + 1] / [2^e] )
	fclose(sops);
}

// Reading SDACs coded as in the Python-code of "Optimal Strategies for CSIDH"
static inline void read_sdacs()
{
	FILE *sdacs;
	char buffer[127] = "\0";

	// File name must be stored as string
	char prefix[13] = "./src/sdacs/\0",
	     path[(int)strlen(suffix) + 13 + 1];

	snprintf(path, sizeof(path), "%s%s", prefix, suffix);

	sdacs = fopen(path, "r");	// reading sdacs
	assert(NULL != sdacs);		// ensuring the file exists

	// Reading line by line
	int i = 0;
	while (EOF != fscanf(sdacs, "%[^\n]", buffer))
	{
		fgetc(sdacs);	// Removing breakline character

		LENGTHS[i++] = removespace(buffer);
		SDACs[i - 1] = calloc(1, sizeof(char) * LENGTHS[i - 1] + 1);
		strcpy(SDACs[i - 1], buffer);
	};
	assert(i == N);
	
	fclose(sdacs);
}
*/

// Constant-time swap of projective x-coordinates
static inline void proj_copy(proj P, proj const Q)
{
	fp_copy(P[0], Q[0]);
	fp_copy(P[1], Q[1]);
}

// Constant-time swap of projective x-coordinates
static inline void proj_cswap(proj P, proj Q, uint8_t c)
{
	fp_cswap(P[0], Q[0], c);
	fp_cswap(P[1], Q[1], c);
}


// Two projective x-cooridinate (XP : ZP) and (XQ : ZQ) are equal iff (XP/ZP) == (XQ/ZQ)
static inline uint64_t proj_isequal(proj const P, proj const Q)
{
	fp XPZQ, ZPXQ;
	fp_mul(XPZQ, P[0], Q[1]);
	fp_mul(ZPXQ, P[1], Q[0]);
	return fp_isequal(XPZQ, ZPXQ);
}

// The projective x-coordinate point (X : Z) at infinity is such that Z == 0
static inline int isinfinity(proj const P)
{
	return fp_iszero(P[1]);
}

#endif
