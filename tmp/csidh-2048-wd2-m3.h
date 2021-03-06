#ifndef _STRATEGIES_H_
#define _STRATEGIES_H_

// This script assumes the C-code implementation has the list of Small Odd Primes (SOPs) stored such that l_0 < l_1 < ... < l_{n-1}
// Recall, the strategies process from small SOPs to large SOPs.

// -----------------------------------------------------------------------------------------------------------------------------------
// Strategy number 0

static uint32_t L0[]  =	{
	 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52,
	 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25,
	 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10,  9,  8,  7,  6,  5,  4,  3,  2,  1,  0
	};
static uint32_t W0[]  =	{
	230,229,228,227,226,225,224,223,222,221,220,219,218,217,216,215,214,213,212,211,210,209,208,207,206,205,204,203,202,201,200,199,198,197,196,195,194,193,192,191,190,189,188,187,186,185,184,183,182,181,180,
	179,178,177,176,175,174,173,172,171,170,169,168,167,166,165,164,163,162,161,160,159,158,157,156,155,154,153,152,151,150,149,148,147,146,145,144,143,142,141,140,139,138,137,136,135,134,133,132,131,130,129,
	128,127,126,125,124,123,122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,107,106,105,104,103,102,101,100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79
	};
static uint32_t S0[]  =	{
	 47, 18,  7,  4,  2,  1,  3,  2,  1,  6,  5,  4,  3,  2,  1, 11,  6,  5,  4,  3,  2,  1, 10,  9,  8,  7,  6,
	  5,  4,  3,  2,  1, 34, 12, 11, 10,  9,  8,  7,  6,  5,  4,  3,  2,  1, 24,  9,  8,  7,  6,  5,  4,  3,  2,
	  1, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10,  9,  8,  7,  6,  5,  4,  3,  2,  1
	};
// -----------------------------------------------------------------------------------------------------------------------------------
// Strategy number 1

static uint32_t L1[]  =	{
	 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46,
	 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22,
	 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10,  9,  8,  7,  6,  5,  4,  3,  2,  1,  0
	};
static uint32_t W1[]  =	{
	230,229,228,227,226,225,224,223,222,221,220,219,218,217,216,215,214,213,212,211,210,209,208,207,206,205,204,203,202,201,200,199,198,197,196,195,194,193,192,191,190,189,188,187,186,185,184,183,182,181,180,179,178,177,
	176,175,174,173,172,171,170,169,168,167,166,165,164,163,162,161,160,159,158,157,156,155,154,153,152,151,150,149,148,147,146,145,144,143,142,141,140,139,138,137,136,135,134,133,132,131,130,129,128,127,126,125,124,123,
	122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,107,106,105,104,103,102,101,100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70
	};
static uint32_t S1[]  =	{
	 40, 16,  7,  4,  2,  1,  3,  2,  1,  6,  5,  4,  3,  2,  1, 10,  5,  4,  3,  2,  1,  9,  8,  7,
	  6,  5,  4,  3,  2,  1, 29, 10,  9,  8,  7,  6,  5,  4,  3,  2,  1, 21,  7,  6,  5,  4,  3,  2,
	  1, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10,  9,  8,  7,  6,  5,  4,  3,  2,  1
	};
// -----------------------------------------------------------------------------------------------------------------------------------
// Strategy number 2

static uint32_t L2[]  =	{
	 43, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28,
	 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13,
	 12, 11, 10,  9,  8,  7,  6,  5,  4,  3,  2,  1,  0
	};
static uint32_t W2[]  =	{
	230,229,228,227,226,225,224,223,222,221,220,219,218,217,216,215,214,213,212,211,210,209,208,207,206,205,204,203,202,201,200,199,198,197,196,195,194,193,192,191,190,189,188,187,186,185,184,183,182,181,180,179,178,177,176,175,174,173,172,171,170,169,168,
	167,166,165,164,163,162,161,160,159,158,157,156,155,154,153,152,151,150,149,148,147,146,145,144,143,142,141,140,139,138,137,136,135,134,133,132,131,130,129,128,127,126,125,124,123,122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,107,106,105,
	104,103,102,101,100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 42
	};
static uint32_t S2[]  =	{
	 24,  9,  5,  4,  3,  2,  1,  4,  3,  2,  1,  8,  7,  6,  5,
	  4,  3,  2,  1, 16,  7,  6,  5,  4,  3,  2,  1, 15, 14, 13,
	 12, 11, 10,  9,  8,  7,  6,  5,  4,  3,  2,  1
	};
// -----------------------------------------------------------------------------------------------------------------------------------
// Strategy number 3

static uint32_t L3[]  =	{
	 32, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21,
	 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10,
	  9,  8,  7,  6,  5,  4,  3,  2,  1,  0
	};
static uint32_t W3[]  =	{
	230,229,228,227,226,225,224,223,222,221,220,219,218,217,216,215,214,213,212,211,210,209,208,207,206,205,204,203,202,201,200,199,198,197,196,195,194,193,192,191,190,189,188,187,186,185,184,183,182,181,180,179,178,177,176,175,174,173,172,171,170,169,168,167,166,165,164,
	163,162,161,160,159,158,157,156,155,154,153,152,151,150,149,148,147,146,145,144,143,142,141,140,139,138,137,136,135,134,133,132,131,130,129,128,127,126,125,124,123,122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,107,106,105,104,103,102,101,100, 99, 98, 97,
	 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 31
	};
static uint32_t S3[]  =	{
	 18,  7,  4,  2,  1,  3,  2,  1,  6,  5,  4,
	  3,  2,  1, 11,  6,  5,  4,  3,  2,  1, 10,
	  9,  8,  7,  6,  5,  4,  3,  2,  1
	};
// -----------------------------------------------------------------------------------------------------------------------------------
// Strategy number 4

static uint32_t L4[]  =	{
	 23, 22, 21, 20, 19, 18, 17, 16, 15,
	 14, 13, 12, 11, 10,  9,  8,  7,  6,
	  5,  4,  3,  2,  1,  0
	};
static uint32_t W4[]  =	{
	230,229,228,227,226,225,224,223,222,221,220,219,218,217,216,215,214,213,212,211,210,209,208,207,206,205,204,203,202,201,200,199,198,197,196,195,194,193,192,191,190,189,188,187,186,185,184,183,182,181,180,179,178,177,176,175,174,173,172,171,170,169,168,167,166,165,164,163,162,161,
	160,159,158,157,156,155,154,153,152,151,150,149,148,147,146,145,144,143,142,141,140,139,138,137,136,135,134,133,132,131,130,129,128,127,126,125,124,123,122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,107,106,105,104,103,102,101,100, 99, 98, 97, 96, 95, 94, 93, 92, 91,
	 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24
	};
static uint32_t S4[]  =	{
	 11,  7,  5,  4,  3,  2,  1,  6,
	  5,  4,  3,  2,  1, 10,  9,  8,
	  7,  6,  5,  4,  3,  2,  1
	};
// -----------------------------------------------------------------------------------------------------------------------------------
// Strategy number 5

static uint32_t L5[]  =	{
	 21, 20, 19, 18, 17, 16, 15, 14,
	 13, 12, 11, 10,  9,  8,  7,  6,
	  5,  4,  2,  1,  0
	};
static uint32_t W5[]  =	{
	230,229,228,227,226,225,224,223,222,221,220,219,218,217,216,215,214,213,212,211,210,209,208,207,206,205,204,203,202,201,200,199,198,197,196,195,194,193,192,191,190,189,188,187,186,185,184,183,182,181,180,179,178,177,176,175,174,173,172,171,170,169,168,167,166,165,164,163,162,161,160,
	159,158,157,156,155,154,153,152,151,150,149,148,147,146,145,144,143,142,141,140,139,138,137,136,135,134,133,132,131,130,129,128,127,126,125,124,123,122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,107,106,105,104,103,102,101,100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89,
	 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22,  3
	};
static uint32_t S5[]  =	{
	 10,  6,  4,  3,  2,  1,  5,
	  4,  3,  2,  1,  9,  8,  7,
	  6,  5,  4,  3,  2,  1
	};


// -----------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------
#define NUMBER_OF_DIFFERENT_STRATEGIES  6

// L_STRATEGY[i] determines the small odd primes l_i per each strategy
static uint32_t *L_STRATEGY[NUMBER_OF_DIFFERENT_STRATEGIES] = {
	L0, L1, L2, L3, L4, L5
	};

// W_STRATEGY[i] determines L \ L_STRATEGY[i]
static uint32_t *W_STRATEGY[NUMBER_OF_DIFFERENT_STRATEGIES] = {
	W0, W1, W2, W3, W4, W5
	};

// S_STRATEGY[i] determines the optimal strategy for L_STRATEGY[i]
static uint32_t *S[NUMBER_OF_DIFFERENT_STRATEGIES] = {
	S0, S1, S2, S3, S4, S5
	};

// Number of primes for each strategy
static uint32_t NUMBER_OF_PRIMES[] = {
	 79, 70, 43, 32, 24, 21
	};

// Number of rounds per each different strategy
static uint8_t ROUNDS[] = {
	  1,  1,  1,  1,  1,  1
	};

// Maximum number of degree-(l_i) isogeny constructions
static uint8_t M[] =	{
	  4,  5,  5,  5,  6,  6,  6,  6,  6,  6,  6,  6,  6,  6,  6,  6,  6,  6,  6,  6,  6,  6,  5,  5,  4,  4,  4,  4,  4,  4,  4,  3,  4,  3,  3,  3,  3,  3,  3,  3,  3,  3,  2,  3,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  1,  1,  1,  1,  1,  1,  1,  1,
	  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
	  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0
	};

#endif /* required framework for the strategies to be used in CSIDH-2048 using OAYT-style */
