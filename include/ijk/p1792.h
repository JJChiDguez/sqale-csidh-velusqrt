#ifndef _IJK_p1792_H_
#define _IJK_p1792_H_

#ifdef _MONT_C_CODE_
// The list of the bitlength of each SOP
static uint64_t bL[] =	{
	  2,  3,  3,  4,  4,  5,  5,  5,  5,  5,  6,  6,  6,  6,  6,  6,  6,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,
	  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
	 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11
	};
#endif

#ifdef _ISOG_H_

// The list of Small Odd Primes (SOPs) is stored such that l_0 < l_1 < ... < l_{n-1}
static uint64_t L[] =	{
	  3,  5,  7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97,101,103,107,109,113,127,131,137,139,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,
	367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503,509,521,523,541,547,557,563,569,571,577,587,593,599,601,607,613,617,619,631,641,643,647,653,659,661,673,677,683,691,701,709,719,727,733,739,743,751,757,761,769,773,787,797,809,811,821,
	823,827,829,839,853,857,859,863,877,881,883,887,907,911,919,929,937,941,947,953,967,971,977,983,991,997,1009,1013,1019,1021,1031,1033,1039,1049,1051,1061,1063,1069,1087,1091,1093,1097,1103,1109,1117,1123,1129,1151,1153,1163,1171,1181,1187,1193,1201,1213,1217,1223,1229,1231,1237,1249,1259,1277,1279,1283,1289
	};

#ifndef _C_CODE_
// Sizes for the sets I, J, and K required in the new velusqrt formulae
static int sizeI[] =	{
	  0,  1,  1,  2,  3,  2,  2,  2,  3,  3,  4,  3,  5,  5,  4,  4,  5,  4,  4,  4,  4,  5,  5,  6,  6,  6,  6,  6,  7,  6,  6,  6,  6,  6,  6,  8,  8,  7,  7,  7,  7,  8,  8,  8,  7,  9,  8,  8,  8,  8, 10, 10,  8,  8,  8,  8,  8,  8, 10,  9,  9,  9,  9,  9, 10, 10, 10, 10, 11, 11,
	 11, 11, 11, 11, 12, 11, 11, 11, 13, 13, 13, 12, 12, 11, 11, 14, 14, 14, 14, 13, 12, 11, 11, 11, 14, 13, 13, 13, 17, 17, 14, 14, 14, 12, 12, 12, 12, 12, 12, 12, 14, 14, 13, 13, 13, 13, 13, 13, 15, 14, 14, 14, 14, 14, 14, 14, 15, 14, 14, 14, 14, 14, 14, 16, 16, 14, 14, 14, 14, 17,
	 17, 17, 17, 16, 15, 15, 15, 15, 18, 18, 18, 17, 15, 15, 19, 19, 18, 18, 18, 17, 16, 16, 16, 16, 19, 19, 18, 18, 18, 17, 16, 16, 16, 16, 16, 16, 16, 19, 18, 17, 17, 17, 17, 17, 17, 17, 17, 19, 18, 18, 18, 18, 18, 18, 20, 20, 19, 19, 19, 19, 19, 19, 19, 19, 19, 20, 20
	};
static int sizeJ[] =	{
	  0,  1,  1,  1,  1,  2,  2,  2,  2,  2,  2,  3,  2,  2,  3,  3,  3,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  5,  5,  5,  5,  6,  6,  5,  5,  6,  6,  6,  6,  6,  6,  6,  7,  6,  7,  7,  7,  7,  6,  6,  8,  8,  8,  8,  8,  8,  7,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8,
	  8,  8,  8,  8,  8,  9,  9,  9,  8,  8,  8,  9,  9, 10, 10,  8,  8,  8,  8,  9, 10, 11, 11, 11,  9, 10, 10, 10,  8,  8, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 11, 11, 12, 12, 12, 12, 12, 12, 11, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 12, 12, 14, 14, 14, 14, 12,
	 12, 12, 12, 13, 14, 14, 14, 14, 12, 12, 12, 13, 15, 15, 12, 12, 13, 13, 13, 14, 15, 15, 15, 15, 13, 13, 14, 14, 14, 15, 16, 16, 16, 16, 16, 16, 16, 14, 15, 16, 16, 16, 16, 16, 16, 16, 16, 15, 16, 16, 16, 16, 16, 16, 15, 15, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16
	};
static int sizeK[] =	{
	  1,  0,  1,  1,  0,  0,  1,  3,  2,  3,  2,  2,  1,  3,  2,  5,  0,  1,  3,  4,  7,  1,  4,  0,  2,  3,  5,  6,  0,  3,  5,  8,  9,  3,  6,  1,  3,  2,  5,  6, 11,  0,  2,  3,  7,  3,  1,  2,  4,  7,  0,  5,  0,  3,  6,  7, 10, 12,  1,  2,  9, 11, 12, 14,  5,  8, 13, 14,  0,  3,
	  7, 10, 13, 15,  2,  0,  2,  6,  1,  2,  7,  0,  3,  1,  4,  4,  6,  7,  9,  5,  3,  3,  7,  9,  2,  0,  1, 10,  1,  6,  1,  4,  5,  0,  5,  8, 11, 12, 15, 18,  0,  1,  3,  8,  9, 11, 14, 17,  0,  0,  2,  5,  9, 14, 18, 23,  3,  2,  5,  7, 11, 14, 16,  0,  2,  1,  6, 12, 13,  2,
	  3,  5,  6,  3,  6,  8,  9, 11,  6,  8,  9,  1,  3,  5,  3,  8,  0,  2,  5,  0,  3,  5,  8, 11,  1,  4,  0,  2,  5,  0,  3,  4,  7, 12, 13, 18, 19,  2,  3,  1,  2,  4,  7, 10, 14, 17, 20,  5,  0,  5,  9, 14, 17, 20,  0,  6,  0,  3,  6,  7, 10, 16, 21, 30, 31,  1,  4
	};
#endif

#define sI_max 20
#define sJ_max 16
#define sK_max 645
#endif

#endif /* required framework for the #I, #J, and #K, which is used in new velusqrt fomurlae on CSIDH-1792 */