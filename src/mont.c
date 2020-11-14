#include "mont.h"
#define _MONT_C_CODE_
#include "sdacs.h"
#include "ijk.h"

/* All the projective curve coefficients corresponds with (A + 2C : 4C) */

// Affine Montgomery coefficient computation (A + 2C : 4C) --> A/C
void coeff(fp B, proj const A)
{
	fp t;
	fp_add(t, A[0], A[0]);	// (2 * A24)
	fp_sub(t, t, A[1]);	// (2 * A24) - C24

	fp_copy(B, A[1]);
	fp_inv(B);		// 1 / (C24)
	fp_add(t, t, t);	// 4*A = 2[(2 * A24) - C24]
	fp_mul(B, t, B);	// A/C = 2[(2 * A24) - C24] / C24
}

// Differential point doubling
void xdbl(proj Q, const proj P, proj const A)
{
	fp t_0, t_1;
	fp_sub(t_0, P[0],P[1]);
	fp_add(t_1, P[0],P[1]);

	fp_sqr(t_0, t_0);
	fp_sqr(t_1, t_1);

	fp_mul(Q[1], A[1], t_0);
	fp_mul(Q[0], Q[1], t_1);

	fp_sub(t_1, t_1, t_0);
	fp_mul(t_0, A[0], t_1);
	fp_add(Q[1], Q[1], t_0);
	fp_mul(Q[1], Q[1], t_1);
}

// Differential point addition
void xadd(proj R, const proj P, proj const Q, proj const PQ)
{
	fp a, b, c, d;

	fp_add(a, P[0], P[1]);
	fp_sub(b, P[0], P[1]);
	fp_add(c, Q[0], Q[1]);
	fp_sub(d, Q[0], Q[1]);

	fp_mul(a, a, d);
	fp_mul(b, b, c);
	fp_add(c, a, b);
	fp_sub(d, a, b);

	fp_sqr(c, c);
	fp_sqr(d, d);

	fp_mul(R[0], PQ[1], c);
	fp_mul(R[1], PQ[0], d);
}

// Differential point multiplication by l_i, that is, x([l_i]P)
void xmul(proj Q, uint64_t const i, proj const P, proj const A)
{
	proj R0, R1, R2, T;
	proj_copy(R0, P);
	xdbl(R1, P, A);
	xadd(R2, (const fp*)R1, (const fp*)R0, P);

	int j;
	for (j = LENGTHS[i] - 1; j >= 0; j--)
	{
		proj_cswap(R0, R1, (uint8_t)((int)SDACs[i][j] - 48));	// cswap of points
		// This branch is only required for CSIDH
		// It would amazing to do the next branch with constant-swaps (xdbl can be easily modified in order to have the same cost than xadd)
		if (isinfinity((const fp*)R0))
			xdbl(T, (const fp*)R2, A);
		else
			xadd(T, (const fp*)R2, (const fp*)R1, (const fp*)R0);

		proj_copy(R0, (const fp*)R1);
		proj_copy(R1, (const fp*)R2);
		proj_copy(R2, (const fp*)T);
	};

	proj_copy(Q, (const fp*)R2);
}

// Elligator is used for sampling point on E(fp)[\pi - 1] and E(fp)[\pi + 1]
void elligator(proj Tp, proj Tm, proj const A)
{
	fp Ap, C_times_u_squared_minus_one, AC_times_u_squared_minus_one,
	   u, u_squared, u_squared_plus_one, u_squared_minus_one,
	   alpha, beta, tmp, aux;

	fp_add(Ap, A[0], A[0]);
	fp_sub(Ap, Ap, A[1]);
	fp_add(Ap, Ap, Ap);

	fp_random(u);
	fp_sqr(u_squared, u);

	fp_add(u_squared_plus_one, u_squared, fp_1);
	fp_sub(u_squared_minus_one, u_squared, fp_1);

	fp_mul(C_times_u_squared_minus_one, A[1], u_squared_minus_one);
	fp_mul(AC_times_u_squared_minus_one, Ap, C_times_u_squared_minus_one);

	fp_sqr(tmp, Ap);
	fp_mul(tmp, tmp, u_squared);
	fp_sqr(aux, C_times_u_squared_minus_one);
	fp_add(tmp, tmp, aux);
	fp_mul(tmp, AC_times_u_squared_minus_one, tmp);

	fp_set0(alpha);
	fp_copy(beta, u);
    	fp_cswap(alpha, beta, fp_iszero(tmp));
	fp_mul(u_squared_plus_one, alpha, u_squared_plus_one);
	fp_mul(alpha, alpha, C_times_u_squared_minus_one);

	fp_add(Tp[0], Ap, alpha);
	fp_mul(Tm[0], Ap, u_squared);
	fp_add(Tm[0], Tm[0], alpha);
	fp_sub(Tm[0], fp_0, Tm[0]);

	fp_add(tmp, tmp, u_squared_plus_one);
	fp_cswap(Tp[0], Tm[0], 1 - fp_issquare(tmp));

	fp_copy(Tp[1], C_times_u_squared_minus_one);
	fp_copy(Tm[1], C_times_u_squared_minus_one);
}

// For computing [(p + 1) / l_i]P, i:=0, ..., (N - 1)
void cofactor_multiples(proj P[], proj const A, size_t lower, size_t upper)
{
	assert(lower < upper);
	if (upper - lower == 1)
		return ;

	int i;
	size_t mid = lower + (upper - lower + 1) / 2;

	proj_copy(P[mid], (const fp*)P[lower]);
	for (i = lower; i < (int)mid; i++)
		xmul(P[mid], i, (const fp*)P[mid], A);

	for (i = (int)mid; i < (int)upper; i++)
		xmul(P[lower], i, (const fp*)P[lower], A);

	cofactor_multiples(P, A, lower, mid);
	cofactor_multiples(P, A, mid, upper);
}

// Next functions determines is the Montgomery curve y² = x³ + ax² + x is supersingular
bool validate(fp const a)
{
	init_counters();	// set to zero the field operation counters
	fp x;
	proj A, P[N];
	// A = (a : 1)
	fp_copy(A[0], a);
	fp_set1(A[1]);

	// Coding curve coefficients as (A' + 2C : 4C)
	fp_add(A[1], A[1], A[1]);	// 2C
	fp_add(A[0], A[0], A[1]);	// A' + 2C
	fp_add(A[1], A[1], A[1]);	// 4C

	int i;
	uint64_t bits;

	do
	{
		bits = 0;
		// P = (x : 1)
		fp_random(x);
		fp_copy(P[0][0], x);
		fp_set1(P[0][1]);

		// Multiplying by 2^cofactor
		for (i = 0; i < (int)cofactor; i++)
			xdbl(P[0], (const fp*)P[0], (const fp*)A);
		
		// At this step, P[0] is expected to be a torsion-([p + 1]/[2^e]) point
		cofactor_multiples(P, (const fp*)A, 0, N);
		for (i = N - 1; i >= 0; i--)
		{
			// we only gain information if [(p+1)/l] P is non-zero
			if (isinfinity((const fp*)P[i]) != 1)
			{
				xmul(P[i], i, (const fp*)P[i], (const fp*)A);

				// P does not have order dividing p + 1?
				if (isinfinity((const fp*)P[i]) != 1)
					return false;

				// If bits > UPPER_BOUND, hence definitely supersingular
				bits += bL[i];
				if (bits > UPPER_BOUND)
					return true;
			};
		};

	} while (1);
}


