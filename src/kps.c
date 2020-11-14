#include "isog.h"

// -----------------------------------------------------------
// -----------------------------------------------------------
// Traditional Kernel Point computation (KPs)

void eds2mont(proj P)
{
	fp t;
	fp_add(t, P[1], P[0]);
	fp_sub(P[1], P[1], P[0]);
	fp_copy(P[0], t);
}


// Differential doubling in Twisted Edwards model
void ydbl(proj Q, proj const P, proj const A)
{
	fp t_0, t_1, X, Z;

	fp_sqr(t_0, P[0]);
	fp_sqr(t_1, P[1]);
	fp_mul(Z, A[1], t_0);
	fp_mul(X, Z, t_1);
	fp_sub(t_1, t_1, t_0);
	fp_mul(t_0, A[0], t_1);
	fp_add(Z, Z, t_0);
	fp_mul(Z, Z, t_1);

	fp_sub(Q[0], X, Z);
	fp_add(Q[1], X, Z);
}

// Differential addition in Twisted Edwards model
void yadd(proj R, proj const P, proj const Q, proj const PQ)
{
	fp a, b, c, d, X, Z;

	fp_mul(a, P[1], Q[0]);
	fp_mul(b, P[0], Q[1]);
	fp_add(c, a, b);
	fp_sub(d, a, b);
	fp_sqr(c, c);
	fp_sqr(d, d);

	fp_add(a, PQ[1], PQ[0]);
	fp_sub(b, PQ[1], PQ[0]);
	fp_mul(X, b, c);
	fp_mul(Z, a, d);

	fp_sub(R[0], X, Z);
	fp_add(R[1], X, Z);
}

// tvelu formulae
void kps_t(uint64_t const i, proj const P, proj const A)
{
	int j;
	int d = ((int)L[i] - 1) / 2;

	// Mapping the input point x(P), which belongs to a 
	// Montogmery curve model, into its Twisted Edwards 
	// representation y(P)
	fp_sub(K[0][0], P[0], P[1]);
	fp_add(K[0][1], P[0], P[1]);
	ydbl(K[1], (const fp*)K[0], A);				// y([2]P)

	for (j = 2; j < d; j++)
		yadd(K[j], (const fp*)K[j - 1], (const fp*)K[0], (const fp*)K[j - 2]);	// y([j+1]P)
}

// -----------------------------------------------------------
// -----------------------------------------------------------
// Kernel Point computation (KPs) used in velu SQRT
void kps_s(uint64_t const i, proj const P, proj const A)
{
	// =================================================================================
	assert(L[i] > gap);	// Ensuring velusqrt is used for l_i > gap
	sI = sizeI[i];		// size of I
	sJ = sizeJ[i];		// size of J
	sK = sizeK[i];		// size of K

	assert(sI >= sJ);	// Ensuring #I >= #J
	assert(sK >= 0);	// Recall, it must be that #K >= 0
	assert(sJ > 1);		// ensuring sI >= sJ > 1
	// =================================================================================
	
	// Now, we can proceed by the general case

	int j;

	// --------------------------------------------------
	// Computing [j]P for each j in {1, 3, ..., 2*sJ - 1}
	proj P2, P4;
	proj_copy(J[0], P);				//    x(P)
	xdbl(P2, P, A);					// x([2]P)
	xadd(J[1], (const fp*)P2, (const fp*)J[0], (const fp*)J[0]);			// x([3]P)
	for (j = 2; j < sJ; j++)
		xadd(J[j], (const fp*)J[j - 1], (const fp*)P2, (const fp*)J[j - 2]);	// x([2*j + 1]P)

	// ----------------------------------------------------------
	// Computing [i]P for i in { (2*sJ) * (2i + 1) : 0 <= i < sI}
	proj Q, Q2;
	int bhalf_floor= sJ >> 1;
	int bhalf_ceil = sJ - bhalf_floor;
	xdbl(P4, (const fp*)P2, A);								// x([4]P)
	proj_cswap(P2, P4, sJ % 2);								// x([4]P) <--- coditional swap ---> x([2]P)
	xadd(Q, (const fp*)J[bhalf_ceil], (const fp*)J[bhalf_floor - 1], (const fp*)P2);	// Q := [2b]P
	proj_cswap(P2, P4, sJ % 2);								// x([4]P) <--- coditional swap ---> x([2]P)

	// .............................................
	proj_copy(I[0], (const fp*)Q);					//    x(Q)
	xdbl(Q2, (const fp*)Q, A);					// x([2]Q)
	xadd(I[1], (const fp*)Q2, (const fp*)I[0], (const fp*)I[0]);	// x([3]Q)
	
	for (j = 2; j < sI; j++)
		xadd(I[j], (const fp*)I[j - 1], (const fp*)Q2, (const fp*)I[j - 2]);	// x([2*j + 1]Q)

	// .............................................
	// Computing on fly the linear factors of h_I(W)
	for (j = 0; j < sI; j++)
		fp_sub(I[j][0], fp_0, I[j][0]);		// just negate projective x-coordinate

	// ----------------------------------------------------------------
	// Computing [k]P for k in { 4*sJ*sI + 1, ..., l - 6, l - 4, l - 2}
	// In order to avoid BRANCHES we make allways copy in K[0] and K[1]
	// by assuming that these entries are only used when sK >= 1 and 
	// sK >= 2, respectively.

	//if (sK >= 1)
	proj_copy(K[0], (const fp*)P2);				//       x([l - 2]P) = x([2]P)
	//if (sK >= 2)
	proj_copy(K[1], (const fp*)P4);				//       x([l - 4]P) = x([4]P)
	
	for (j = 2; j < sK; j++)
		xadd(K[j], (const fp*)K[j - 1], (const fp*)P2, (const fp*)K[j - 2]);	// x([l - 2*(j+1)]P) = x([2 * (j+1)]P)

	// ----------------------------------------------------------------
	//                   ~~~~~~~~               ~~~~~~~~
	//                    |    |                 |    |
	// Computing h_I(W) = |    | (W - x([i]P)) = |    | (Zi * W - Xi) / Zi where x([i]P) = Xi/Zi
	//                    i in I                 i in I
	// In order to avoid costly inverse computations in fp, we are gonna work with projective coordinates

	product_tree(ptree_hI, deg_ptree_hI, 0, I, 2, sI);				// Product tree of hI
	if (!scaled)
	{
		// (unscaled) remainder tree approach
		reciprocal_tree(rtree_hI, rtree_A, 2*sJ + 1, ptree_hI, deg_ptree_hI, 0, sI);	// Reciprocal tree of hI
	}
	else
	{
		// scaled remainder tree approach
		fp f_rev[sI + 1];
		for (j = 0; j < (sI + 1); j++)
			fp_copy(f_rev[j], ptree_hI[0][sI - j]);

		if (sI > (2*sJ - sI + 1))
			reciprocal(R0, A0, f_rev, sI + 1, sI);
		else
			reciprocal(R0, A0, f_rev, sI + 1, 2*sJ - sI + 1);
	};
}
