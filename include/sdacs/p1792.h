#ifndef _SDACS_p1792_H_
#define _SDACS_p1792_H_

#define cofactor 2	// Exponent of 2 in the factorization of (p + 1) 

#ifdef _MONT_C_CODE_
#define UPPER_BOUND 949	// Bits of 4 * sqrt( [p + 1] / [2^e] )

// Recall, the list of Small Odd Primes (SOPs) is stored such that l_0 < l_1 < ... < l_{n-1}

// The list of Shortest Differential Addition Chains (SDACs) corresponding with each l_i
static int LENGTHS[] =	{
	  0,  1,  2,  3,  3,  4,  4,  5,  5,  5,  6,  6,  6,  6,  7,  7,  7,  7,  7,  7,  7,  8,  7,  8,  8,  8,  8,  8,  9,  9,  8,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 10,  9, 10, 10, 10, 10,  9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 10, 11, 11, 11, 11,
	 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 11, 11, 12, 11, 11, 11, 12, 11, 11, 12, 11, 12, 11, 11, 12, 11, 12, 12, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 12, 13, 13, 13, 13, 12, 12, 13, 13, 13, 13,
	 13, 13, 13, 13, 13, 13, 13, 13, 12, 13, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 14, 13, 13, 13, 13, 13, 13, 14, 13, 13, 13, 13, 13, 13, 13, 13, 14, 13, 13, 13, 14, 14, 14, 14, 13, 13, 14, 13, 14
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
static char SDAC33[] = "010110100";
static char SDAC34[] = "110000000";
static char SDAC35[] = "100101000";
static char SDAC36[] = "100001010";
static char SDAC37[] = "011000000";
static char SDAC38[] = "100010000";
static char SDAC39[] = "100000010";
static char SDAC40[] = "010001000";
static char SDAC41[] = "010000010";
static char SDAC42[] = "1100010001";
static char SDAC43[] = "100000000";
static char SDAC44[] = "1100010100";
static char SDAC45[] = "1011000100";
static char SDAC46[] = "1100001000";
static char SDAC47[] = "1100010000";
static char SDAC48[] = "000000000";
static char SDAC49[] = "1010101010";
static char SDAC50[] = "1101000000";
static char SDAC51[] = "1000101010";
static char SDAC52[] = "1010000001";
static char SDAC53[] = "1001010000";
static char SDAC54[] = "1000101000";
static char SDAC55[] = "1010001000";
static char SDAC56[] = "1010100000";
static char SDAC57[] = "0101001000";
static char SDAC58[] = "1001000000";
static char SDAC59[] = "1000000010";
static char SDAC60[] = "0100001000";
static char SDAC61[] = "0010100000";
static char SDAC62[] = "0001010000";
static char SDAC63[] = "0101000000";
static char SDAC64[] = "11010101000";
static char SDAC65[] = "0000100000";
static char SDAC66[] = "10101101000";
static char SDAC67[] = "10110101000";
static char SDAC68[] = "10110010000";
static char SDAC69[] = "11001000000";
static char SDAC70[] = "10110000010";
static char SDAC71[] = "10101001010";
static char SDAC72[] = "10110100000";
static char SDAC73[] = "10101000001";
static char SDAC74[] = "10100000101";
static char SDAC75[] = "10101001000";
static char SDAC76[] = "10100101000";
static char SDAC77[] = "10100001010";
static char SDAC78[] = "10001000100";
static char SDAC79[] = "111000001010";
static char SDAC80[] = "10100100000";
static char SDAC81[] = "10100000100";
static char SDAC82[] = "111010100000";
static char SDAC83[] = "10100000010";
static char SDAC84[] = "00101000100";
static char SDAC85[] = "01000010100";
static char SDAC86[] = "110110010000";
static char SDAC87[] = "10000000100";
static char SDAC88[] = "10000001000";
static char SDAC89[] = "111010000000";
static char SDAC90[] = "10100000000";
static char SDAC91[] = "110010001010";
static char SDAC92[] = "01000100000";
static char SDAC93[] = "00101000000";
static char SDAC94[] = "110100010010";
static char SDAC95[] = "10000000000";
static char SDAC96[] = "101100100010";
static char SDAC97[] = "110010100000";
static char SDAC98[] = "00010000000";
static char SDAC99[] = "101101000010";
static char SDAC100[] = "101101010000";
static char SDAC101[] = "100101100000";
static char SDAC102[] = "101000011000";
static char SDAC103[] = "101010101010";
static char SDAC104[] = "101100010000";
static char SDAC105[] = "110000100000";
static char SDAC106[] = "100100010010";
static char SDAC107[] = "100010010010";
static char SDAC108[] = "010100011000";
static char SDAC109[] = "101101000000";
static char SDAC110[] = "100010100100";
static char SDAC111[] = "101010000001";
static char SDAC112[] = "110100000000";
static char SDAC113[] = "100010001010";
static char SDAC114[] = "101010000100";
static char SDAC115[] = "101001010000";
static char SDAC116[] = "101010001000";
static char SDAC117[] = "100100000100";
static char SDAC118[] = "100000100100";
static char SDAC119[] = "101000000001";
static char SDAC120[] = "100000010010";
static char SDAC121[] = "100001000010";
static char SDAC122[] = "100010000010";
static char SDAC123[] = "100000101000";
static char SDAC124[] = "100000001010";
static char SDAC125[] = "001010010000";
static char SDAC126[] = "000101001000";
static char SDAC127[] = "011000000000";
static char SDAC128[] = "1100101010100";
static char SDAC129[] = "010100001000";
static char SDAC130[] = "1101001001010";
static char SDAC131[] = "1101100000100";
static char SDAC132[] = "1101100001000";
static char SDAC133[] = "1101001010100";
static char SDAC134[] = "001001000000";
static char SDAC135[] = "001000001000";
static char SDAC136[] = "1100001001010";
static char SDAC137[] = "1110000000000";
static char SDAC138[] = "1011010010100";
static char SDAC139[] = "1101001000010";
static char SDAC140[] = "1011011000000";
static char SDAC141[] = "1101010010000";
static char SDAC142[] = "1100010000001";
static char SDAC143[] = "1101001010000";
static char SDAC144[] = "1101010000010";
static char SDAC145[] = "1100001000100";
static char SDAC146[] = "1101000001010";
static char SDAC147[] = "1010010110000";
static char SDAC148[] = "001000000000";
static char SDAC149[] = "1100000100010";
static char SDAC150[] = "000001000000";
static char SDAC151[] = "1100000010100";
static char SDAC152[] = "1101000000100";
static char SDAC153[] = "1101000010000";
static char SDAC154[] = "1100000000001";
static char SDAC155[] = "1101000000010";
static char SDAC156[] = "1101010000000";
static char SDAC157[] = "1001010001010";
static char SDAC158[] = "1011000001000";
static char SDAC159[] = "1010010001010";
static char SDAC160[] = "1010010101000";
static char SDAC161[] = "1100010000000";
static char SDAC162[] = "1000000001100";
static char SDAC163[] = "1010101000010";
static char SDAC164[] = "1000100100010";
static char SDAC165[] = "1010101010000";
static char SDAC166[] = "1001000001010";
static char SDAC167[] = "1010001001000";
static char SDAC168[] = "1000001010010";
static char SDAC169[] = "1101000000000";
static char SDAC170[] = "1000100001010";
static char SDAC171[] = "1000101000010";
static char SDAC172[] = "1000010000001";
static char SDAC173[] = "1000100000001";
static char SDAC174[] = "0100000110000";
static char SDAC175[] = "0110000010000";
static char SDAC176[] = "0110000001000";
static char SDAC177[] = "1001000010000";
static char SDAC178[] = "11011000100100";
static char SDAC179[] = "1001000000010";
static char SDAC180[] = "0101010010000";
static char SDAC181[] = "1000010001000";
static char SDAC182[] = "1000100010000";
static char SDAC183[] = "1000001000010";
static char SDAC184[] = "1000100000010";
static char SDAC185[] = "11011001010000";
static char SDAC186[] = "1000010100000";
static char SDAC187[] = "0100010010000";
static char SDAC188[] = "0100100010000";
static char SDAC189[] = "0010010100000";
static char SDAC190[] = "0010100000100";
static char SDAC191[] = "0010001010000";
static char SDAC192[] = "0101001000000";
static char SDAC193[] = "0101000000100";
static char SDAC194[] = "11010000011000";
static char SDAC195[] = "0010101000000";
static char SDAC196[] = "1000010000000";
static char SDAC197[] = "1000000001000";
static char SDAC198[] = "11000101010100";
static char SDAC199[] = "10101011000001";
static char SDAC200[] = "11010001010010";
static char SDAC201[] = "11010101000100";
static char SDAC202[] = "0000100100000";
static char SDAC203[] = "0001000010000";
static char SDAC204[] = "11010000101010";
static char SDAC205[] = "0100100000000";
static char SDAC206[] = "11010101010000";

static char *SDACs[N] = {
	SDAC0, SDAC1, SDAC2, SDAC3, SDAC4, SDAC5, SDAC6, SDAC7, SDAC8, SDAC9, SDAC10, SDAC11, SDAC12, SDAC13, SDAC14, SDAC15, SDAC16, SDAC17, SDAC18, SDAC19, SDAC20, SDAC21, SDAC22, SDAC23, SDAC24, SDAC25, SDAC26, SDAC27, SDAC28, SDAC29, SDAC30, SDAC31, SDAC32, SDAC33, SDAC34, SDAC35, SDAC36, SDAC37, SDAC38, SDAC39, SDAC40, SDAC41, SDAC42, SDAC43, SDAC44, SDAC45, SDAC46, SDAC47, SDAC48, SDAC49, SDAC50, SDAC51, SDAC52, SDAC53, SDAC54, SDAC55, SDAC56, SDAC57, SDAC58, SDAC59, SDAC60, SDAC61, SDAC62, SDAC63, SDAC64, SDAC65, SDAC66, SDAC67, SDAC68, SDAC69, 
	SDAC70, SDAC71, SDAC72, SDAC73, SDAC74, SDAC75, SDAC76, SDAC77, SDAC78, SDAC79, SDAC80, SDAC81, SDAC82, SDAC83, SDAC84, SDAC85, SDAC86, SDAC87, SDAC88, SDAC89, SDAC90, SDAC91, SDAC92, SDAC93, SDAC94, SDAC95, SDAC96, SDAC97, SDAC98, SDAC99, SDAC100, SDAC101, SDAC102, SDAC103, SDAC104, SDAC105, SDAC106, SDAC107, SDAC108, SDAC109, SDAC110, SDAC111, SDAC112, SDAC113, SDAC114, SDAC115, SDAC116, SDAC117, SDAC118, SDAC119, SDAC120, SDAC121, SDAC122, SDAC123, SDAC124, SDAC125, SDAC126, SDAC127, SDAC128, SDAC129, SDAC130, SDAC131, SDAC132, SDAC133, SDAC134, SDAC135, SDAC136, SDAC137, SDAC138, SDAC139, 
	SDAC140, SDAC141, SDAC142, SDAC143, SDAC144, SDAC145, SDAC146, SDAC147, SDAC148, SDAC149, SDAC150, SDAC151, SDAC152, SDAC153, SDAC154, SDAC155, SDAC156, SDAC157, SDAC158, SDAC159, SDAC160, SDAC161, SDAC162, SDAC163, SDAC164, SDAC165, SDAC166, SDAC167, SDAC168, SDAC169, SDAC170, SDAC171, SDAC172, SDAC173, SDAC174, SDAC175, SDAC176, SDAC177, SDAC178, SDAC179, SDAC180, SDAC181, SDAC182, SDAC183, SDAC184, SDAC185, SDAC186, SDAC187, SDAC188, SDAC189, SDAC190, SDAC191, SDAC192, SDAC193, SDAC194, SDAC195, SDAC196, SDAC197, SDAC198, SDAC199, SDAC200, SDAC201, SDAC202, SDAC203, SDAC204, SDAC205, SDAC206
	};
#endif

#endif /* required framework for the SDACs, which is used in CSIDH-1792 */
