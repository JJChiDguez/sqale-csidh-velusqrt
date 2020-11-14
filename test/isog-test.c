#include<time.h>

#define _C_CODE_
#include "isog.h"
#include "sdacs.h"

uint8_t test_elligator_output(proj const Tp, proj const Tm, fp const a)
{
	fp XTp, XTm;

	fp_copy(XTp, Tp[1]);
	fp_inv(XTp);
	fp_copy(XTm, Tm[1]);
	fp_inv(XTm);

	fp_mul(XTp, XTp, Tp[0]);
	fp_mul(XTm, XTm, Tm[0]);

	fp tmp, aux, YTp_squared, YTm_squared;

	fp_sqr(tmp, XTp);
	fp_mul(aux, tmp, XTp);
	fp_mul(tmp, tmp, a);
	fp_add(YTp_squared, tmp, aux);
	fp_add(YTp_squared, YTp_squared, XTp);

	fp_sqr(tmp, XTm);
	fp_mul(aux, tmp, XTm);
	fp_mul(tmp, tmp, a);
	fp_add(YTm_squared, tmp, aux);
	fp_add(YTm_squared, YTm_squared, XTm);

	return fp_issquare(YTp_squared) & ( 1 - fp_issquare(YTm_squared));
}

int main()
{
	// ------------

	int i, j;

	fp a;
	proj A, B, T, Tp, Tm, P[N];
	fp_set0(A[0]);
	fp_set1(A[1]);
	
	fp_add(A[0], A[1], A[0]);	// 1
	fp_add(A[0], A[0], A[0]);	// 2
	fp_add(A[0], A[1], A[0]);	// 3
	fp_add(A[0], A[0], A[0]);	// 6

	fp_add(A[1], A[1], A[1]);	// 2C
	fp_add(A[0], A[0], A[1]);	// A' + 2C
	fp_add(A[1], A[1], A[1]);	// 4C

	// Just to ensure the projective curve coeffientes are different from zero
	assert( !fp_iszero(A[0]) & !fp_iszero(A[0]) );

	uint8_t boolp, boolm;
	do
	{
		elligator(Tp, Tm, (const fp*)A);
		for (j = 0; j < (int)cofactor; j++)
		{
			xdbl(Tp, (const fp*)Tp, (const fp*)A);
			xdbl(Tm, (const fp*)Tm, (const fp*)A);
		};

		// Checking if Tp is an order (p+1)/(2^e)
		proj_copy(P[0], (const fp*)Tp);
		cofactor_multiples(P, (const fp*)A, 0, N);
		boolp = 1;
		for (j = 0; j < N; j++)
			boolp &= (1 - isinfinity((const fp*)P[j]));
		
		// Checking if Tm is an order (p+1)/(2^e)
		proj_copy(P[0], (const fp*)Tm);
		cofactor_multiples(P, (const fp*)A, 0, N);
		boolm = 1;
		for (j = 0; j < N; j++)
			boolm &= (1 - isinfinity((const fp*)P[j]));

	} while ( (1 - boolp) | (1 - boolm) );

	setmemory();
	// --------------------------------------------------------------
	uint64_t sadd, smul, ssqr;
	for (i = 0; i < N; i++)
	{
		printf("// Processing the %d-th prime:\t", i + 1);
		printf("%2d%%", 100 * i / (int)N);
		fflush(stdout);
		printf("\r\x1b[K");

		proj_copy(T, (const fp*)Tm);
		for (j = (i+1); j < N; j++)
			xmul(T, j, (const fp*)T, (const fp*)A);

		assert( !isinfinity((const fp*)T) );

		init_counters();        // set to zero the field operation counters
		sadd = 0;
		smul = 0;
		ssqr = 0;
		kps(i, (const fp*)T, (const fp*)A);
		sadd += fpadd;
		smul += fpmul;
		ssqr += fpsqr;
		if (L[i] > gap)
			printf("[\033[0;31m%5ld\033[0m] (#I: %3d, #J: %3d, #K: %3d) ", L[i], sI, sJ, sK);
		else
			printf("[\033[0;31m%5ld\033[0m] --------------------------- ", L[i]);
		printf("\033[0;33mkps:\033[0m %7luM + %7luS + %7lua\033[0;33m;\033[0m ", fpmul, fpsqr, fpadd);

		init_counters();        // set to zero the field operation counters
		xisog(B, i, (const fp*)A);
		sadd += fpadd;
		smul += fpmul;
		ssqr += fpsqr;
		printf("\033[0;35mxisog:\033[0m %7luM + %7luS + %7lua\033[0;35m;\033[0m ", fpmul, fpsqr, fpadd);

		init_counters();        // set to zero the field operation counters
		xeval(Tm, i, (const fp*)Tm, (const fp*)A);
		sadd += fpadd;
		smul += fpmul;
		ssqr += fpsqr;
		printf("\033[0;34mxeval:\033[0m %7luM + %7luS + %7lua\033[0;34m;\033[0m ", fpmul, fpsqr, fpadd);

		printf("\033[0;32mcost:\033[0m %7luM\033[0;32m;\033[0m ", smul + ssqr);
		printf("\033[0;36mratio:\033[0m %2.03f\033[0;36m;\033[0m\n", ((float)smul + (float)ssqr) / (2.0 + (float)L[i]) );
		init_counters();        // set to zero the field operation counters
		xeval(Tp, i, (const fp*)Tp, (const fp*)A);
		proj_copy(A, (const fp*)B);
		
		coeff(a, (const fp*)A);
		assert(validate(a));

		if (L[i] > gap)
		{
			if (!scaled)
				clear_tree(rtree_hI, 0, sI);
			clear_tree(ptree_hI, 0, sI);
		}
	};

	assert( fp_iszero(a) );

	for (i = 0; i < N; i++)
	{
		printf("// Doing more tests, %d-th experiment:\t", i);
		printf("%2d%%", 100 * i / (int)N);
		fflush(stdout);
		printf("\r\x1b[K");

		proj_copy(T, (const fp*)Tp);
		for (j = (i+1); j < N; j++)
			xmul(T, j, (const fp*)T, (const fp*)A);

		assert( !isinfinity((const fp*)T) );
		kps(i, (const fp*)T, (const fp*)A);
		xisog(B, i, (const fp*)A);
		xeval(Tp, i, (const fp*)Tp, (const fp*)A);
		proj_copy(A, (const fp*)B);

		coeff(a, (const fp*)A);
		assert(validate(a));

		if (L[i] > gap)
		{
			if (!scaled)
				clear_tree(rtree_hI, 0, sI);
			clear_tree(ptree_hI, 0, sI);
		};
	};

	fp_dec(a, a);
	fp six;
	fp_set0(six);
	six[0] = 0x6;
	assert( fp_isequal(six, a) );

	freememory();
	printf("// No errors!\n");
	return 0;
}
