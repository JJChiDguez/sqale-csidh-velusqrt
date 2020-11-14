#ifndef _SDACS_p1024_H_
#define _SDACS_p1024_H_

#define cofactor 2	// Exponent of 2 in the factorization of (p + 1) 

#ifdef _MONT_C_CODE_
#define UPPER_BOUND 544	// Bits of 4 * sqrt( [p + 1] / [2^e] )

// Recall, the list of Small Odd Primes (SOPs) is stored such that l_0 < l_1 < ... < l_{n-1}

// The list of Shortest Differential Addition Chains (SDACs) corresponding with each l_i
static int LENGTHS[] =	{
	  0,  1,  2,  3,  3,  4,  4,  5,  5,  5,  6,  6,  6,  6,  7,  7,  7,  7,  7,  7,  7,  8,  7,  8,  8,  8,  8,  8,  9,  9,  8,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 10,
	  9, 10, 10, 10, 10,  9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 11, 11, 12, 11, 11, 11, 12,
	 11, 11, 12, 11, 12, 11, 11, 12, 11, 12, 12, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13
	};

static char SDAC0[1];
static char SDAC1[] = "0";
static char SDAC2[] = "10";
static char SDAC3[] = "100";
static char SDAC4[] = "000";
static char SDAC5[] = "1010";
static char SDAC6[] = "0100";
static char SDAC7[] = "11000";
static char SDAC8[] = "10000";
static char SDAC9[] = "01000";
static char SDAC10[] = "110000";
static char SDAC11[] = "101010";
static char SDAC12[] = "100010";
static char SDAC13[] = "100000";
static char SDAC14[] = "1101010";
static char SDAC15[] = "1011000";
static char SDAC16[] = "1010001";
static char SDAC17[] = "1001000";
static char SDAC18[] = "1010000";
static char SDAC19[] = "0010100";
static char SDAC20[] = "0010000";
static char SDAC21[] = "11010010";
static char SDAC22[] = "0000000";
static char SDAC23[] = "11000000";
static char SDAC24[] = "10100100";
static char SDAC25[] = "00110000";
static char SDAC26[] = "01100000";
static char SDAC27[] = "10000100";
static char SDAC28[] = "111010000";
static char SDAC29[] = "110100001";
static char SDAC30[] = "01000000";
static char SDAC31[] = "110101000";
static char SDAC32[] = "110000100";
static char SDAC33[] = "110100000";
static char SDAC34[] = "010110100";
static char SDAC35[] = "110000000";
static char SDAC36[] = "100101000";
static char SDAC37[] = "100001010";
static char SDAC38[] = "011000000";
static char SDAC39[] = "100010000";
static char SDAC40[] = "100000010";
static char SDAC41[] = "010001000";
static char SDAC42[] = "010000010";
static char SDAC43[] = "1100010001";
static char SDAC44[] = "100000000";
static char SDAC45[] = "1100010100";
static char SDAC46[] = "1011000100";
static char SDAC47[] = "1100001000";
static char SDAC48[] = "1100010000";
static char SDAC49[] = "000000000";
static char SDAC50[] = "1010101010";
static char SDAC51[] = "1101000000";
static char SDAC52[] = "1000101010";
static char SDAC53[] = "1010000001";
static char SDAC54[] = "1001010000";
static char SDAC55[] = "1000101000";
static char SDAC56[] = "1010001000";
static char SDAC57[] = "1010100000";
static char SDAC58[] = "0101001000";
static char SDAC59[] = "1001000000";
static char SDAC60[] = "1000000010";
static char SDAC61[] = "0100001000";
static char SDAC62[] = "0010100000";
static char SDAC63[] = "0001010000";
static char SDAC64[] = "0101000000";
static char SDAC65[] = "11010101000";
static char SDAC66[] = "0000100000";
static char SDAC67[] = "10101101000";
static char SDAC68[] = "10110101000";
static char SDAC69[] = "10110010000";
static char SDAC70[] = "11001000000";
static char SDAC71[] = "10110000010";
static char SDAC72[] = "10101001010";
static char SDAC73[] = "10110100000";
static char SDAC74[] = "10101000001";
static char SDAC75[] = "10100000101";
static char SDAC76[] = "10101001000";
static char SDAC77[] = "10100101000";
static char SDAC78[] = "10100001010";
static char SDAC79[] = "10001000100";
static char SDAC80[] = "111000001010";
static char SDAC81[] = "10100100000";
static char SDAC82[] = "10100000100";
static char SDAC83[] = "111010100000";
static char SDAC84[] = "10100000010";
static char SDAC85[] = "00101000100";
static char SDAC86[] = "01000010100";
static char SDAC87[] = "110110010000";
static char SDAC88[] = "10000000100";
static char SDAC89[] = "10000001000";
static char SDAC90[] = "111010000000";
static char SDAC91[] = "10100000000";
static char SDAC92[] = "110010001010";
static char SDAC93[] = "01000100000";
static char SDAC94[] = "00101000000";
static char SDAC95[] = "110100010010";
static char SDAC96[] = "10000000000";
static char SDAC97[] = "101100100010";
static char SDAC98[] = "110010100000";
static char SDAC99[] = "00010000000";
static char SDAC100[] = "101101000010";
static char SDAC101[] = "101101010000";
static char SDAC102[] = "100101100000";
static char SDAC103[] = "101000011000";
static char SDAC104[] = "101010101010";
static char SDAC105[] = "101100010000";
static char SDAC106[] = "110000100000";
static char SDAC107[] = "100100010010";
static char SDAC108[] = "100010010010";
static char SDAC109[] = "010100011000";
static char SDAC110[] = "101101000000";
static char SDAC111[] = "100010100100";
static char SDAC112[] = "101010000001";
static char SDAC113[] = "110100000000";
static char SDAC114[] = "100010001010";
static char SDAC115[] = "101010000100";
static char SDAC116[] = "101001010000";
static char SDAC117[] = "101010001000";
static char SDAC118[] = "100100000100";
static char SDAC119[] = "100000100100";
static char SDAC120[] = "101000000001";
static char SDAC121[] = "100000010010";
static char SDAC122[] = "100001000010";
static char SDAC123[] = "100010000010";
static char SDAC124[] = "100000101000";
static char SDAC125[] = "100000001010";
static char SDAC126[] = "001010010000";
static char SDAC127[] = "000101001000";
static char SDAC128[] = "011000000000";
static char SDAC129[] = "1010101000010";

static char *SDACs[N] = {
	SDAC0, SDAC1, SDAC2, SDAC3, SDAC4, SDAC5, SDAC6, SDAC7, SDAC8, SDAC9, SDAC10, SDAC11, SDAC12, SDAC13, SDAC14, SDAC15, SDAC16, SDAC17, SDAC18, SDAC19, SDAC20, SDAC21, SDAC22, SDAC23, SDAC24, SDAC25, SDAC26, SDAC27, SDAC28, SDAC29, SDAC30, SDAC31, SDAC32, SDAC33, SDAC34, SDAC35, SDAC36, SDAC37, SDAC38, SDAC39, SDAC40, SDAC41, SDAC42, SDAC43, 
	SDAC44, SDAC45, SDAC46, SDAC47, SDAC48, SDAC49, SDAC50, SDAC51, SDAC52, SDAC53, SDAC54, SDAC55, SDAC56, SDAC57, SDAC58, SDAC59, SDAC60, SDAC61, SDAC62, SDAC63, SDAC64, SDAC65, SDAC66, SDAC67, SDAC68, SDAC69, SDAC70, SDAC71, SDAC72, SDAC73, SDAC74, SDAC75, SDAC76, SDAC77, SDAC78, SDAC79, SDAC80, SDAC81, SDAC82, SDAC83, SDAC84, SDAC85, SDAC86, SDAC87, 
	SDAC88, SDAC89, SDAC90, SDAC91, SDAC92, SDAC93, SDAC94, SDAC95, SDAC96, SDAC97, SDAC98, SDAC99, SDAC100, SDAC101, SDAC102, SDAC103, SDAC104, SDAC105, SDAC106, SDAC107, SDAC108, SDAC109, SDAC110, SDAC111, SDAC112, SDAC113, SDAC114, SDAC115, SDAC116, SDAC117, SDAC118, SDAC119, SDAC120, SDAC121, SDAC122, SDAC123, SDAC124, SDAC125, SDAC126, SDAC127, SDAC128, SDAC129
	};
#endif

#endif /* required framework for the SDACs, which is used in CSIDH-1024 */
