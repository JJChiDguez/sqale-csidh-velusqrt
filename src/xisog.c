#define _MONT_C_CODE_
#include "isog.h" 

// -------------------------------------------------------------------------
// -------------------------------------------------------------------------
// Traditional isogeny construction (xISOG)

// xISOG procedure, which is a hybrid between Montgomery and Twisted Edwards
// This tradition fomulae corresponds with the Twisted Edwards formulae but 
// mapping the output into Montgomery form
void xisog_t(proj B, uint64_t const i, proj const A)
{
	int j;
	int d = ((int)L[i] - 1) / 2;	// Here, l = 2d + 1

	fp By, Bz, constant_d_edwards, tmp_a, tmp_d;

	fp_copy(By, K[0][0]);
	fp_copy(Bz, K[0][1]);

	for (j = 1; j < d; j++)
	{
		fp_mul(By, By, K[j][0]);
		fp_mul(Bz, Bz, K[j][1]);
	};

	// Mapping Montgomery curve coefficients into Twisted Edwards form
	fp_sub(constant_d_edwards, A[0], A[1]);
	fp_copy(tmp_a, A[0]);
	fp_copy(tmp_d, constant_d_edwards);

	// left-to-right method for computing a^l and d^l
	for (j = 1; j < (int)bL[i]; j++)
	{
		fp_sqr(tmp_a, tmp_a);
		fp_sqr(tmp_d, tmp_d);
		if( ( ((int)L[i] >> ((int)bL[i] - j - 1)) & 1 ) != 0 )
		{
			fp_mul(tmp_a, tmp_a, A[0]);
			fp_mul(tmp_d, tmp_d, constant_d_edwards);
		};
	};

	// raising to 8-th power
	for (j = 0; j < 3; j++)
	{
		fp_sqr(By, By);
		fp_sqr(Bz, Bz);
	};

	// Mapping Twisted Edwards curve coefficients into Montgomery form
	fp_mul(B[0], tmp_a, Bz);
	fp_mul(B[1], tmp_d, By);
	fp_sub(B[1], B[0], B[1]);
}

// -------------------------------------------------------------------------
// -------------------------------------------------------------------------
//  Isogeny construction (xISOG) used in velu SQRT

void xisog_s(proj B, uint64_t const i, proj const A)
{
	// =================================================================================
	assert(L[i] > gap);     // Ensuring velusqrt is used for l_i > gap
	sI = sizeI[i];          // size of I
	sJ = sizeJ[i];          // size of J
	sK = sizeK[i];          // size of K

	assert(sI >= sJ);       // Ensuring #I >= #J
	assert(sK >= 0);         // Recall, L is a prime and therefore it must be that #K > 0
	assert(sJ > 1);         // ensuring sI >= sJ > 1
	// =================================================================================
	
	// We require the curve coefficient A = A'/C ... well, a multiple of these ones
	fp Ap;
	fp_add(Ap, A[0], A[0]);	// 2A' + 4C
	fp_sub(Ap, Ap, A[1]);	// 2A'
	fp_add(Ap, Ap, Ap);	// 4A'

	fp ADD_SQUARED[sJ],	// (Xj + Zj)^2
	   SUB_SQUARED[sJ];	// (Xj - Zj)^2

	int j;
	// Next loop precompute some variables to be used in the reaminder of xisog, and xeval
	for (j = 0; j < sJ; j++)
	{
		fp_sub(SUB_SQUARED[j], J[j][0], J[j][1]);		// (Xj - Zj)
		fp_sqr(SUB_SQUARED[j], SUB_SQUARED[j]);			// (Xj - Zj)^2
		fp_add(ADD_SQUARED[j], J[j][0], J[j][1]);		// (Xj + Zj)
		fp_sqr(ADD_SQUARED[j], ADD_SQUARED[j]);			// (Xj + Zj)^2

		fp_sub(XZJ4[j], SUB_SQUARED[j], ADD_SQUARED[j]);	// -4*Xj*Zj
	};

	//  --------------------------------------------------------------------------------------------------
	//                   ~~~~~~~~
	//                    |    | 
	// Computing E_J(W) = |    | [ F0(W, x([j]P)) * alpha^2 + F1(W, x([j]P)) * alpha + F2(W, x([j]P)) ]
	//                    j in J 
	// In order to avoid costly inverse computations in fp, we are gonna work with projective coordinates
	// In particular, for a degree-l isogeny construction, we need alpha = 1 and alpha = -1

	//fp EJ_0[sJ][3],	// quadratic factors of one polynomial to be used in a resultant 
	//   EJ_1[sJ][3];	// quadratic factors of one polynomial to be used in a resultant

	// Next loop computes all the quadratic factors of EJ_0 and EJ_1
	fp t1;
	for (j = 0; j < sJ; j++)
	{
		// Each SUB_SQUARED[j] and ADD_SQUARED[j] should be multiplied by C
		fp_mul(EJ_1[j][0], ADD_SQUARED[j], A[1]);
		fp_mul(EJ_0[j][0], SUB_SQUARED[j], A[1]);
		// We require the double of tadd and tsub
		fp_add(EJ_0[j][1], EJ_1[j][0], EJ_1[j][0]);
		fp_add(EJ_1[j][1], EJ_0[j][0], EJ_0[j][0]);

		fp_mul(t1, XZJ4[j], Ap);			// A' *(-4*Xj*Zj)

		// Case alpha = 1
		fp_sub(EJ_0[j][1], t1, EJ_0[j][1]);
		fp_copy(EJ_0[j][2], EJ_0[j][0]);		// E_[0,j} is a palindrome
		
		// Case alpha = -1
		fp_sub(EJ_1[j][1], EJ_1[j][1], t1);
		fp_copy(EJ_1[j][2], EJ_1[j][0]);		// E_{1,j} is a palindrome
	};

	// ---------------------------------------------------------------------
	// The faster way for multiplying is using a divide-and-conquer approach
	
	// selfreciprocal product tree of EJ_0 (we only require the root)
	product_tree_selfreciprocal(ptree_EJ, deg_ptree_EJ, 0, EJ_0, 3, sJ);
	assert( deg_ptree_EJ[0] == (2*sJ) );
	if (!scaled)
	{
		// (unscaled) remainder tree approach
		multieval_unscaled(leaves, ptree_EJ[0], 2*sJ + 1, rtree_hI, (const fp*)rtree_A, ptree_hI, deg_ptree_hI, 0, sI);
	}
	else
	{
		// scaled remainder tree approach
		fp G[sI], G_rev[sI];
		poly_redc(G, ptree_EJ[0], 2*sJ + 1, ptree_hI[0], sI + 1, R0, A0);
		for (j = 0; j < sI; j++)
			fp_copy(G_rev[j], G[sI - 1 - j]);

		poly_mul_middle(G_rev, G_rev, sI, R0, sI);
		for (j = 0; j < sI; j++)
			fp_copy(G[j], G_rev[sI - 1 - j]);

		multieval_scaled(leaves, G, ptree_hI, deg_ptree_hI, 0, sI);
	};
	clear_tree(ptree_EJ, 0, sJ);
	// Finally, we must multiply the leaves of the outpur of remainders
	fp r0;
	product(r0, (const fp*)leaves, sI);

	// selfreciprocal product tree of EJ_1 (we only require the root)
	product_tree_selfreciprocal(ptree_EJ, deg_ptree_EJ, 0, EJ_1, 3, sJ);
	assert( deg_ptree_EJ[0] == (2*sJ) );
	if (!scaled)
	{
		// (unscaled) remainder tree approach
		multieval_unscaled(leaves, ptree_EJ[0], 2*sJ + 1, rtree_hI, (const fp*)rtree_A, ptree_hI, deg_ptree_hI, 0, sI);
	}
	else
	{
		// scaled remainder tree approach
		fp G[sI], G_rev[sI];
		poly_redc(G, ptree_EJ[0], 2*sJ + 1, ptree_hI[0], sI + 1, R0, A0);
		for (j = 0; j < sI; j++)
			fp_copy(G_rev[j], G[sI - 1 - j]);

		poly_mul_middle(G_rev, G_rev, sI, R0, sI);
		for (j = 0; j < sI; j++)
			fp_copy(G[j], G_rev[sI - 1 - j]);

		multieval_scaled(leaves, G, ptree_hI, deg_ptree_hI, 0, sI);
	};
	clear_tree(ptree_EJ, 0, sJ);
	// Finally, we must multiply the leaves of the outpur of remainders
	fp r1;
	product(r1, (const fp*)leaves, sI);

	// -------------------------------
	// Sometimes the public value sK is equal to zero,
	// Thus for avoing runtime error we add one when sK =0
	fp hK_0[sK + 1], hK_1[sK + 1], hk_0, hk_1;
	for (j = 0; j < sK; j++)
	{
		fp_sub(hK_0[j], K[j][1], K[j][0]);
		fp_add(hK_1[j], K[j][1], K[j][0]);
	};

	// hk_0 <- use product to mulitiply all the elements in hK_0
	product(hk_0, (const fp*)hK_0, sK);
	// hk_1 <- use product to mulitiply all the elements in hK_1
	product(hk_1, (const fp*)hK_1, sK);
	
	// --------------------------------------------------------------
	// Now, we have all the ingredients for computing the image curve
	fp A24, A24m,
	   t24, t24m;	// <---- JORGE creo que podemos omitir estas variables, se usan cuando ya no se requiren los valores de la entrada A (podemos cambiar estos t's por B[0] y B[1]

	fp_copy(A24, A[0]);			// A' + 2C
	fp_sub(A24m, A[0], A[1]);		// A' - 2C
	fp_copy(Ap, A24m);

	// left-to-right method for computing (A' + 2C)^l and (A' - 2C)^l
	for (j = 1; j < (int)bL[i]; j++)
	{
		fp_sqr(A24, A24);
		fp_sqr(A24m, A24m);
		if( ( ((int)L[i] >> ((int)bL[i] - j - 1)) & 1 ) != 0 )
		{
			fp_mul(A24, A24, A[0]);
			fp_mul(A24m, A24m, Ap);
		};
	};

	fp_mul(t24m, hk_1, r1);			// output of algorithm 2 with alpha =-1 and without the demoninator
	fp_sqr(t24m, t24m);			// raised at 2
	fp_sqr(t24m, t24m);			// raised at 4
	fp_sqr(t24m, t24m);			// raised at 8

	fp_mul(t24, hk_0, r0);			// output of algorithm 2 with alpha = 1 and without the demoninator 
	fp_sqr(t24, t24);			// raised at 2
	fp_sqr(t24, t24);			// raised at 4
	fp_sqr(t24, t24);			// raised at 8

	fp_mul(A24, A24, t24m);
	fp_mul(A24m, A24m, t24);

	// Now, we have d = (A24m / A24) where the image Montgomery cuve coefficient is
	//      B'   2*(1 + d)   2*(A24 + A24m)
	// B = ---- = --------- = --------------
	//      C      (1 - d)     (A24 - A24m)
	// However, we required B' + 2C = 4*A24 and 4C = 4 * (A24 - A24m)

	fp_sub(t24m, A24, A24m);		//   (A24 - A24m)
	fp_add(t24m, t24m, t24m);		// 2*(A24 - A24m)
	fp_add(t24m, t24m, t24m);		// 4*(A24 - A24m)

	fp_add(t24, A24, A24);			// 2 * A24
	fp_add(t24, t24, t24);			// 4 * A24

	fp_copy(B[0], t24);
	fp_copy(B[1], t24m);
}
