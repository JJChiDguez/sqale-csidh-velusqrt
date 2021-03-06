#ifndef _SDACS_p4096_H_
#define _SDACS_p4096_H_

#define cofactor 2	// Exponent of 2 in the factorization of (p + 1) 

#ifdef _MONT_C_CODE_
#define UPPER_BOUND 2157	// Bits of 4 * sqrt( [p + 1] / [2^e] )

// Recall, the list of Small Odd Primes (SOPs) is stored such that l_0 < l_1 < ... < l_{n-1}

// The list of Shortest Differential Addition Chains (SDACs) corresponding with each l_i
static int LENGTHS[] =	{
	  0,  1,  2,  3,  3,  4,  4,  5,  5,  5,  6,  6,  6,  6,  7,  7,  7,  7,  7,  7,  7,  8,  7,  8,  8,  8,  8,  8,  9,  9,  8,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9, 10,  9, 10, 10, 10, 10,  9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 11, 11, 12, 11, 11, 11, 12, 11, 11, 12, 11, 12, 11, 11, 12, 11, 12, 12, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 12, 13, 13, 13, 13, 12, 12, 13, 13, 13,
	 13, 13, 13, 13, 13, 13, 13, 13, 13, 12, 13, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 14, 13, 13, 13, 13, 13, 13, 14, 13, 13, 13, 13, 13, 13, 13, 14, 13, 13, 13, 14, 14, 14, 14, 13, 13, 14, 13, 14, 13, 13, 13, 13, 14, 14, 14, 13, 14, 14, 14, 14, 14, 14, 14, 13, 13, 14, 14, 14, 14, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 14, 14, 14, 14, 14, 14, 14, 15, 14, 14, 14, 14, 15, 14, 14, 14, 15, 15, 14, 14, 14,
	 14, 14, 14, 14, 15, 14, 14, 14, 14, 15, 14, 14, 15, 14, 15, 14, 14, 14, 15, 15, 15, 14, 15, 15, 15, 15, 15, 15, 14, 14, 15, 14, 15, 14, 14, 15, 14, 15, 14, 15, 14, 14, 15, 15, 15, 15, 14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 14, 14, 15, 15, 15, 15, 14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 16, 16, 15, 15, 15, 15, 15, 16, 15, 15, 16, 15, 15, 15, 15, 15, 15, 15, 15, 16, 15, 15, 16, 16, 15, 15, 15, 15, 15, 15, 15, 15, 15
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
static char SDAC129[] = "1100101010100";
static char SDAC130[] = "010100001000";
static char SDAC131[] = "1101001001010";
static char SDAC132[] = "1101100000100";
static char SDAC133[] = "1101100001000";
static char SDAC134[] = "1101001010100";
static char SDAC135[] = "001001000000";
static char SDAC136[] = "001000001000";
static char SDAC137[] = "1100001001010";
static char SDAC138[] = "1110000000000";
static char SDAC139[] = "1011010010100";
static char SDAC140[] = "1101001000010";
static char SDAC141[] = "1011011000000";
static char SDAC142[] = "1101010010000";
static char SDAC143[] = "1100010000001";
static char SDAC144[] = "1101001010000";
static char SDAC145[] = "1101010000010";
static char SDAC146[] = "1100001000100";
static char SDAC147[] = "1101000001010";
static char SDAC148[] = "1010010110000";
static char SDAC149[] = "001000000000";
static char SDAC150[] = "1100000100010";
static char SDAC151[] = "000001000000";
static char SDAC152[] = "1100000010100";
static char SDAC153[] = "1101000000100";
static char SDAC154[] = "1101000010000";
static char SDAC155[] = "1100000000001";
static char SDAC156[] = "1101000000010";
static char SDAC157[] = "1101010000000";
static char SDAC158[] = "1001010001010";
static char SDAC159[] = "1011000001000";
static char SDAC160[] = "1010010001010";
static char SDAC161[] = "1010010101000";
static char SDAC162[] = "1100010000000";
static char SDAC163[] = "1000000001100";
static char SDAC164[] = "1010101000010";
static char SDAC165[] = "1000100100010";
static char SDAC166[] = "1010101010000";
static char SDAC167[] = "1001000001010";
static char SDAC168[] = "1010001001000";
static char SDAC169[] = "1000001010010";
static char SDAC170[] = "1101000000000";
static char SDAC171[] = "1000100001010";
static char SDAC172[] = "1000101000010";
static char SDAC173[] = "1000010000001";
static char SDAC174[] = "1000100000001";
static char SDAC175[] = "0100000110000";
static char SDAC176[] = "0110000010000";
static char SDAC177[] = "0110000001000";
static char SDAC178[] = "1001000010000";
static char SDAC179[] = "11011000100100";
static char SDAC180[] = "1001000000010";
static char SDAC181[] = "0101010010000";
static char SDAC182[] = "1000010001000";
static char SDAC183[] = "1000100010000";
static char SDAC184[] = "1000001000010";
static char SDAC185[] = "1000100000010";
static char SDAC186[] = "11011001010000";
static char SDAC187[] = "1000010100000";
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
static char SDAC207[] = "0100000000100";
static char SDAC208[] = "0100001000000";
static char SDAC209[] = "0100000100000";
static char SDAC210[] = "0100000001000";
static char SDAC211[] = "11000000001001";
static char SDAC212[] = "11010010001000";
static char SDAC213[] = "11000101000010";
static char SDAC214[] = "0001010000000";
static char SDAC215[] = "11010100010000";
static char SDAC216[] = "11000010010000";
static char SDAC217[] = "11010001010000";
static char SDAC218[] = "10101000110000";
static char SDAC219[] = "11010101000000";
static char SDAC220[] = "10110000010100";
static char SDAC221[] = "11000000100010";
static char SDAC222[] = "0000100000000";
static char SDAC223[] = "0000010000000";
static char SDAC224[] = "10000011000100";
static char SDAC225[] = "10101011000000";
static char SDAC226[] = "10001000110000";
static char SDAC227[] = "10010010100010";
static char SDAC228[] = "0100000000000";
static char SDAC229[] = "10010100100010";
static char SDAC230[] = "10100100100010";
static char SDAC231[] = "11010000001000";
static char SDAC232[] = "11010001000000";
static char SDAC233[] = "11000000000001";
static char SDAC234[] = "10010110000000";
static char SDAC235[] = "10010100010100";
static char SDAC236[] = "10101001000100";
static char SDAC237[] = "10100010010100";
static char SDAC238[] = "10110000100000";
static char SDAC239[] = "10100001001010";
static char SDAC240[] = "10000101010100";
static char SDAC241[] = "10100000001001";
static char SDAC242[] = "10110000000010";
static char SDAC243[] = "11000001000000";
static char SDAC244[] = "10001010101000";
static char SDAC245[] = "11000100000000";
static char SDAC246[] = "10000010101010";
static char SDAC247[] = "10101000101000";
static char SDAC248[] = "0000000000000";
static char SDAC249[] = "10010000010100";
static char SDAC250[] = "01101000000100";
static char SDAC251[] = "10100100100000";
static char SDAC252[] = "10001100000000";
static char SDAC253[] = "10010100010000";
static char SDAC254[] = "10101000000001";
static char SDAC255[] = "01011000000010";
static char SDAC256[] = "01010101001000";
static char SDAC257[] = "10100000010010";
static char SDAC258[] = "110100010010110";
static char SDAC259[] = "00100000011000";
static char SDAC260[] = "10000010001010";
static char SDAC261[] = "10101000010000";
static char SDAC262[] = "10001000000001";
static char SDAC263[] = "01010000100100";
static char SDAC264[] = "10010010000000";
static char SDAC265[] = "01100000001000";
static char SDAC266[] = "111000001000010";
static char SDAC267[] = "01001000101000";
static char SDAC268[] = "11000000000000";
static char SDAC269[] = "01010000010010";
static char SDAC270[] = "10001001000000";
static char SDAC271[] = "111000000101000";
static char SDAC272[] = "01001010100000";
static char SDAC273[] = "10001000001000";
static char SDAC274[] = "10001000100000";
static char SDAC275[] = "110101100000100";
static char SDAC276[] = "110101010101010";
static char SDAC277[] = "00101010100000";
static char SDAC278[] = "00010101010000";
static char SDAC279[] = "00100010000100";
static char SDAC280[] = "10100000100000";
static char SDAC281[] = "01000010000100";
static char SDAC282[] = "00001100000000";
static char SDAC283[] = "00000110000000";
static char SDAC284[] = "110110100001000";
static char SDAC285[] = "10100000000010";
static char SDAC286[] = "01000100000100";
static char SDAC287[] = "01001000000010";
static char SDAC288[] = "00101000010000";
static char SDAC289[] = "110101010100010";
static char SDAC290[] = "00100010100000";
static char SDAC291[] = "01010000000100";
static char SDAC292[] = "110101010000001";
static char SDAC293[] = "01000001010000";
static char SDAC294[] = "110001000010001";
static char SDAC295[] = "10000001000000";
static char SDAC296[] = "10000000001000";
static char SDAC297[] = "10001000000000";
static char SDAC298[] = "110110000010000";
static char SDAC299[] = "110110000001000";
static char SDAC300[] = "110101010010000";
static char SDAC301[] = "01010100000000";
static char SDAC302[] = "110101100000000";
static char SDAC303[] = "101011010101000";
static char SDAC304[] = "110110000000010";
static char SDAC305[] = "111010000000000";
static char SDAC306[] = "110101010001000";
static char SDAC307[] = "110100010101000";
static char SDAC308[] = "10100000000000";
static char SDAC309[] = "00010000100000";
static char SDAC310[] = "100101101010000";
static char SDAC311[] = "00010001000000";
static char SDAC312[] = "110100100100000";
static char SDAC313[] = "01000000000100";
static char SDAC314[] = "01000010000000";
static char SDAC315[] = "110100001001000";
static char SDAC316[] = "01000100000000";
static char SDAC317[] = "011001010100010";
static char SDAC318[] = "00101000000000";
static char SDAC319[] = "101011010001000";
static char SDAC320[] = "00001010000000";
static char SDAC321[] = "00000101000000";
static char SDAC322[] = "110100100000010";
static char SDAC323[] = "101011010000010";
static char SDAC324[] = "110101000000100";
static char SDAC325[] = "101101010100000";
static char SDAC326[] = "10000000000000";
static char SDAC327[] = "101010000110000";
static char SDAC328[] = "011010010101000";
static char SDAC329[] = "110000010000100";
static char SDAC330[] = "110010000000010";
static char SDAC331[] = "110001001000000";
static char SDAC332[] = "101000010001001";
static char SDAC333[] = "110001000010000";
static char SDAC334[] = "101000000110100";
static char SDAC335[] = "101011000100000";
static char SDAC336[] = "110001000001000";
static char SDAC337[] = "110000001000010";
static char SDAC338[] = "101010010001010";
static char SDAC339[] = "110000010000010";
static char SDAC340[] = "00001000000000";
static char SDAC341[] = "00000010000000";
static char SDAC342[] = "110000001010000";
static char SDAC343[] = "110000010100000";
static char SDAC344[] = "110000000101000";
static char SDAC345[] = "101000101010100";
static char SDAC346[] = "01000000000000";
static char SDAC347[] = "101001000000101";
static char SDAC348[] = "011000010101000";
static char SDAC349[] = "101010000101010";
static char SDAC350[] = "010101100001000";
static char SDAC351[] = "101000010101010";
static char SDAC352[] = "101010010010000";
static char SDAC353[] = "110100000100000";
static char SDAC354[] = "001101010100000";
static char SDAC355[] = "101000000110000";
static char SDAC356[] = "101001001010000";
static char SDAC357[] = "101001010010000";
static char SDAC358[] = "100100100100000";
static char SDAC359[] = "101010001001000";
static char SDAC360[] = "101010010001000";
static char SDAC361[] = "100100100000100";
static char SDAC362[] = "101100000010000";
static char SDAC363[] = "000101101010000";
static char SDAC364[] = "101100000001000";
static char SDAC365[] = "110000000000100";
static char SDAC366[] = "110000000100000";
static char SDAC367[] = "011001010000000";
static char SDAC368[] = "010100001100000";
static char SDAC369[] = "101010100010000";
static char SDAC370[] = "001001001001000";
static char SDAC371[] = "100001001000010";
static char SDAC372[] = "101000101010000";
static char SDAC373[] = "100000100100010";
static char SDAC374[] = "011010010000000";
static char SDAC375[] = "100101000000100";
static char SDAC376[] = "100001001010000";
static char SDAC377[] = "011010000010000";
static char SDAC378[] = "100001010000100";
static char SDAC379[] = "101001000010000";
static char SDAC380[] = "100010100000100";
static char SDAC381[] = "101001000100000";
static char SDAC382[] = "100001000101000";
static char SDAC383[] = "011010000000010";
static char SDAC384[] = "1101000011000001";
static char SDAC385[] = "1101101001000100";
static char SDAC386[] = "101000100001000";
static char SDAC387[] = "101001000000010";
static char SDAC388[] = "011010100000000";
static char SDAC389[] = "101000100010000";
static char SDAC390[] = "010011000000000";
static char SDAC391[] = "1110100000010100";
static char SDAC392[] = "001000110000000";
static char SDAC393[] = "101000001000010";
static char SDAC394[] = "1101011010000100";
static char SDAC395[] = "101010000000100";
static char SDAC396[] = "100000100000001";
static char SDAC397[] = "010010000100010";
static char SDAC398[] = "010000000110000";
static char SDAC399[] = "101010000001000";
static char SDAC400[] = "101000001010000";
static char SDAC401[] = "101000101000000";
static char SDAC402[] = "100100000000100";
static char SDAC403[] = "1101001000110000";
static char SDAC404[] = "100000000100100";
static char SDAC405[] = "100100001000000";
static char SDAC406[] = "1110000000100010";
static char SDAC407[] = "1100001011000010";
static char SDAC408[] = "101010100000000";
static char SDAC409[] = "100010010000000";
static char SDAC410[] = "100000100000100";
static char SDAC411[] = "101000000000001";
static char SDAC412[] = "100010000000100";
static char SDAC413[] = "100000100001000";
static char SDAC414[] = "010101000000100";
static char SDAC415[] = "010100101000000";
static char SDAC416[] = "000101000101000";

static char *SDACs[N] = {
	SDAC0, SDAC1, SDAC2, SDAC3, SDAC4, SDAC5, SDAC6, SDAC7, SDAC8, SDAC9, SDAC10, SDAC11, SDAC12, SDAC13, SDAC14, SDAC15, SDAC16, SDAC17, SDAC18, SDAC19, SDAC20, SDAC21, SDAC22, SDAC23, SDAC24, SDAC25, SDAC26, SDAC27, SDAC28, SDAC29, SDAC30, SDAC31, SDAC32, SDAC33, SDAC34, SDAC35, SDAC36, SDAC37, SDAC38, SDAC39, SDAC40, SDAC41, SDAC42, SDAC43, SDAC44, SDAC45, SDAC46, SDAC47, SDAC48, SDAC49, SDAC50, SDAC51, SDAC52, SDAC53, SDAC54, SDAC55, SDAC56, SDAC57, SDAC58, SDAC59, SDAC60, SDAC61, SDAC62, SDAC63, SDAC64, SDAC65, SDAC66, SDAC67, SDAC68, SDAC69, SDAC70, SDAC71, SDAC72, SDAC73, SDAC74, SDAC75, SDAC76, SDAC77, SDAC78, SDAC79, SDAC80, SDAC81, SDAC82, SDAC83, SDAC84, SDAC85, SDAC86, SDAC87, SDAC88, SDAC89, SDAC90, SDAC91, SDAC92, SDAC93, SDAC94, SDAC95, SDAC96, SDAC97, SDAC98, SDAC99, SDAC100, SDAC101, SDAC102, SDAC103, SDAC104, SDAC105, SDAC106, SDAC107, SDAC108, SDAC109, SDAC110, SDAC111, SDAC112, SDAC113, SDAC114, SDAC115, SDAC116, SDAC117, SDAC118, SDAC119, SDAC120, SDAC121, SDAC122, SDAC123, SDAC124, SDAC125, SDAC126, SDAC127, SDAC128, SDAC129, SDAC130, SDAC131, SDAC132, SDAC133, SDAC134, SDAC135, SDAC136, SDAC137, SDAC138, SDAC139, 
	SDAC140, SDAC141, SDAC142, SDAC143, SDAC144, SDAC145, SDAC146, SDAC147, SDAC148, SDAC149, SDAC150, SDAC151, SDAC152, SDAC153, SDAC154, SDAC155, SDAC156, SDAC157, SDAC158, SDAC159, SDAC160, SDAC161, SDAC162, SDAC163, SDAC164, SDAC165, SDAC166, SDAC167, SDAC168, SDAC169, SDAC170, SDAC171, SDAC172, SDAC173, SDAC174, SDAC175, SDAC176, SDAC177, SDAC178, SDAC179, SDAC180, SDAC181, SDAC182, SDAC183, SDAC184, SDAC185, SDAC186, SDAC187, SDAC188, SDAC189, SDAC190, SDAC191, SDAC192, SDAC193, SDAC194, SDAC195, SDAC196, SDAC197, SDAC198, SDAC199, SDAC200, SDAC201, SDAC202, SDAC203, SDAC204, SDAC205, SDAC206, SDAC207, SDAC208, SDAC209, SDAC210, SDAC211, SDAC212, SDAC213, SDAC214, SDAC215, SDAC216, SDAC217, SDAC218, SDAC219, SDAC220, SDAC221, SDAC222, SDAC223, SDAC224, SDAC225, SDAC226, SDAC227, SDAC228, SDAC229, SDAC230, SDAC231, SDAC232, SDAC233, SDAC234, SDAC235, SDAC236, SDAC237, SDAC238, SDAC239, SDAC240, SDAC241, SDAC242, SDAC243, SDAC244, SDAC245, SDAC246, SDAC247, SDAC248, SDAC249, SDAC250, SDAC251, SDAC252, SDAC253, SDAC254, SDAC255, SDAC256, SDAC257, SDAC258, SDAC259, SDAC260, SDAC261, SDAC262, SDAC263, SDAC264, SDAC265, SDAC266, SDAC267, SDAC268, SDAC269, SDAC270, SDAC271, SDAC272, SDAC273, SDAC274, SDAC275, SDAC276, SDAC277, SDAC278, SDAC279, 
	SDAC280, SDAC281, SDAC282, SDAC283, SDAC284, SDAC285, SDAC286, SDAC287, SDAC288, SDAC289, SDAC290, SDAC291, SDAC292, SDAC293, SDAC294, SDAC295, SDAC296, SDAC297, SDAC298, SDAC299, SDAC300, SDAC301, SDAC302, SDAC303, SDAC304, SDAC305, SDAC306, SDAC307, SDAC308, SDAC309, SDAC310, SDAC311, SDAC312, SDAC313, SDAC314, SDAC315, SDAC316, SDAC317, SDAC318, SDAC319, SDAC320, SDAC321, SDAC322, SDAC323, SDAC324, SDAC325, SDAC326, SDAC327, SDAC328, SDAC329, SDAC330, SDAC331, SDAC332, SDAC333, SDAC334, SDAC335, SDAC336, SDAC337, SDAC338, SDAC339, SDAC340, SDAC341, SDAC342, SDAC343, SDAC344, SDAC345, SDAC346, SDAC347, SDAC348, SDAC349, SDAC350, SDAC351, SDAC352, SDAC353, SDAC354, SDAC355, SDAC356, SDAC357, SDAC358, SDAC359, SDAC360, SDAC361, SDAC362, SDAC363, SDAC364, SDAC365, SDAC366, SDAC367, SDAC368, SDAC369, SDAC370, SDAC371, SDAC372, SDAC373, SDAC374, SDAC375, SDAC376, SDAC377, SDAC378, SDAC379, SDAC380, SDAC381, SDAC382, SDAC383, SDAC384, SDAC385, SDAC386, SDAC387, SDAC388, SDAC389, SDAC390, SDAC391, SDAC392, SDAC393, SDAC394, SDAC395, SDAC396, SDAC397, SDAC398, SDAC399, SDAC400, SDAC401, SDAC402, SDAC403, SDAC404, SDAC405, SDAC406, SDAC407, SDAC408, SDAC409, SDAC410, SDAC411, SDAC412, SDAC413, SDAC414, SDAC415, SDAC416
	};
#endif

#endif /* required framework for the SDACs, which is used in CSIDH-4096 */
