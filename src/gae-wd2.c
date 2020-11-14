#define _C_CODE_
#include "csidh.h"
#include "styles.h"
#include "sdacs.h"

// This file contains the implementation regarding with OAYT-style (dummy-isogeny constructions using two torsion points)
// print private key
void sk_print(priv const a, char *c)
{
        int i;
        printf("%s := ( ", c);
        for(i=0; i < (int)NUMBER_OF_PRIMES[0]; i++)
                printf("%d ", a[i]);
        printf(")\n");
}

// print public key
void pk_print(pub const a, char *c)
{
        int i;
        printf("%s := 0x", c);
        for(i=NUMBER_OF_WORDS-1; i > -1; i--)
                printf("%.16" PRIX64 "", a[i]);
        printf(";\n");
}

// Secret key generation
void skgen(priv key)
{
	int i;
	uint8_t rnd;
	for(i = 0; i < (int)NUMBER_OF_PRIMES[0]; i++)
	{
		// rnd is randomly selected from { 0 .. 2M[i] }
		randombytes(&rnd, 1);
		while ( issmaller((int32_t)M[i] << 1, (int32_t)rnd) )     // constant-time comparison
			randombytes(&rnd, 1);

		// Mapping from { 0 .. 2M[i] } into { -M[i] .. M[i] }
		key[i] = (int8_t)rnd - (int8_t)M[i];
	};
}

// Strategy evaluations: isogeny construction determined by the prime list L_STRATEGY[j]
void strategy_evaluation(proj B, int8_t e[], proj const P[], proj const A, uint8_t const j, int8_t m[])
{
	// At most there wil be about log2(largest l to be processed) ramifications
	uint64_t SIZE = bitlength((int)L[L_STRATEGY[j][0]]) + 1;

	proj T, Z0, Z1,
	     C;				// Current Montgomery curve coefficient
	proj ramifications[2][ SIZE ];	// Ramifications are pairs of the form (T_-, T_+) 

	int i, inner,
	    block = 0,	// current size of ramifications
	    pos,	// index of the current small odd prime to be processed
	    k = 0;	// strategy element

	int64_t moves = 0,	// required for reaching an torsion-(l_pos) point 
		xmul_counter[ SIZE ];

	int8_t s_pos = 0,	// sign of e_pos
	       e_pos = 0,	// current secret vector entry to be processed
	       m_pos = 0,	// current number of isogeny constructions performed
	       M_pos = 0,	// current bound to be reached
	       z_pos = 0,	// for checking if the current entry is zero
	       three = 0;	// for catching degree-3 isogeny case

	proj_copy(C, A);			// initial Montgomery curve coefficient
	proj_copy(ramifications[0][0], P[0]);	// point on E[\pi + 1]
	proj_copy(ramifications[1][0], P[1]);	// point on E[\pi - 1]

	// Recall, strategy must have (NUMBER_OF_PRIMES[j] - 1) elements
	for (i = 0; i < ((int)NUMBER_OF_PRIMES[j] - 1); i++)
	{

		pos = NUMBER_OF_PRIMES[j] - 1 - i;			// public index
		M_pos = lookup(L_STRATEGY[j][pos], (int8_t *)M);	// current bound to be used
		m_pos = lookup(L_STRATEGY[j][pos], m);			// current number of isogeny constructions performed
		e_pos = lookup(L_STRATEGY[j][pos], e);			// current secret vector entry
		s_pos = sign(e_pos);					// sign of the current secret vector entry

		// Next while loop is used for reaching a torsion-(l_pos) point
		while ((moves + S[j][k]) < pos)
		{
			block += 1;
			proj_copy(ramifications[0][block], (const fp*)ramifications[0][block - 1]);	// point on E[\pi + 1]
			proj_copy(ramifications[1][block], (const fp*)ramifications[1][block - 1]);	// point on E[\pi - 1]
			for (inner = moves; inner < (moves + S[j][k]); inner++)
			{
				xmul(ramifications[0][block], L_STRATEGY[j][inner], (const fp*)ramifications[0][block], (const fp*)C);
				xmul(ramifications[1][block], L_STRATEGY[j][inner], (const fp*)ramifications[1][block], (const fp*)C);
			};

			xmul_counter[block] = S[j][k];	// the k-th element is used for next iteration on moves
			moves += S[j][k];		// moves is incremented
			k += 1;
		};

		// Next branch depends on the public strategy (next ramifications is a leaf of the strategy tree)
		if (moves < pos)
		{
			block += 1;
			proj_copy(ramifications[0][block], (const fp*)ramifications[0][block - 1]);	// point on E[\pi + 1]
			proj_copy(ramifications[1][block], (const fp*)ramifications[1][block - 1]);	// point on E[\pi - 1]
			proj_cswap(ramifications[0][block], ramifications[1][block], (s_pos + 1) / 2);	// constant-time swap

			for (inner = moves; inner < (moves + S[j][k]); inner++)
				xmul(ramifications[0][block], L_STRATEGY[j][inner], (const fp*)ramifications[0][block], (const fp*)C);

			proj_cswap(ramifications[0][block], ramifications[1][block], (s_pos + 1) / 2);	// constant-tim swap
			
			xmul_counter[block] = S[j][k];	// the k-th element is used for next iteration on moves
			moves += S[j][k];		// moves is incremented
			k += 1;
		};

		// Next branch depends on randomnes: bound not reached?
		if ( !isequal(m_pos, M_pos) )
		{
			proj_cswap(ramifications[0][block], ramifications[1][block], (s_pos + 1) / 2);	// constant-time swap
			// Next branch depends on randomnes: probability of reaching the point at infinity (1/l_pos) 
			if (!isinfinity((const fp*)ramifications[0][block]))
			{
				proj_cswap(ramifications[0][0], ramifications[1][0], (s_pos + 1) / 2);	// constant-time swap: + or -?
				z_pos = isequal(e_pos, 0);						// constant-time comparison

				proj_cswap(ramifications[0][0], ramifications[0][block], z_pos);	// constant-time swap: dummy?
				kps(L_STRATEGY[j][pos], (const fp*)ramifications[0][block], (const fp*)C);	// kernel points computation
				proj_cswap(ramifications[0][0], ramifications[0][block], z_pos);	// constant-time swap: dummy?

				xisog(T, L_STRATEGY[j][pos], (const fp*)C);					// isogeny construction

				// In dummy-isogeny constructions (and traditional velu) is possible to save one xmul procedure
				if (L[L_STRATEGY[j][pos]] > gap)
					xmul(Z0, L_STRATEGY[j][pos], (const fp*)ramifications[0][0], (const fp*)C);			// mult. by l_pos of ramifications[0][0]
				else
				{
					inner = L[L_STRATEGY[j][pos]] >> 1;
					three = isequal(L[L_STRATEGY[j][pos]], 3);
					// Recall, kps_t returns the kernel but on a Twisted Edwards curve
					yadd(Z0, (const fp*)K[(inner + three) - 1], (const fp*)K[0], (const fp*)K[(inner + three) - 2]);
					proj_cswap(Z0, K[inner], three ^ 1);
					yadd(Z0, (const fp*)K[inner], (const fp*)K[inner - 1], (const fp*)K[0]);			// mult. by l_pos of ramifications[0][0]?
					eds2mont(Z0);								// now Z is on the Montgomery curve
				};

				xmul(Z1, L_STRATEGY[j][pos], (const fp*)ramifications[1][0], (const fp*)C);			// mult. by l_pos of ramifications[1][0]
				xeval(ramifications[0][0], L_STRATEGY[j][pos], (const fp*)ramifications[0][0], (const fp*)C);	// isogeny evaluation
				xeval(ramifications[1][0], L_STRATEGY[j][pos], (const fp*)Z1, (const fp*)C);			// isogeny evaluation

				proj_cswap(Z0, ramifications[0][0], z_pos);				// constant-time swap: dummy?
				proj_cswap(Z1, ramifications[1][0], z_pos);				// constant-time swap: dummy?
				proj_cswap(ramifications[0][0], ramifications[1][0], (s_pos + 1) / 2);  // constant-time swap: + or -?

				for (inner = 1; inner < block; inner++)
				{
					proj_cswap(ramifications[0][inner], ramifications[1][inner], (s_pos + 1) / 2);  // constant-time swap: + or -?

					xmul(Z0, L_STRATEGY[j][pos], (const fp*)ramifications[0][inner], (const fp*)C);				// mult. by l_pos of ramifications[0][inner]
					xeval(ramifications[0][inner], L_STRATEGY[j][pos], (const fp*)ramifications[0][inner], (const fp*)C);	// isogeny evaluation
					proj_cswap(Z0, ramifications[0][inner], z_pos);						// constant-time swap: dummy?

					xmul(Z1, L_STRATEGY[j][pos], (const fp*)ramifications[1][inner], (const fp*)C);				// mult. by l_pos of ramifications[1][inner]
					xeval(ramifications[1][inner], L_STRATEGY[j][pos], (const fp*)Z1, (const fp*)C);			// isogeny evaluation
					proj_cswap(Z1, ramifications[1][inner], z_pos);						// constant-time swap: dummy?

					proj_cswap(ramifications[0][inner], ramifications[1][inner], (s_pos + 1) / 2);  // constant-time swap: + or -?
				};

				proj_cswap(C, T, z_pos ^ 1);	// constant-time swap: dummy?

				e_pos -= s_pos;			// decrementing the number of isogeny constructions performed
				m_pos += 1;			// incrementing the number of isogeny constructions reached

				update(L_STRATEGY[j][pos], e_pos, e);	// constant-time update
				update(L_STRATEGY[j][pos], m_pos, m);	// constant-time update
				if (L[L_STRATEGY[j][pos]] > gap)
				{
					if (!scaled)
						clear_tree(rtree_hI, 0, sI);
					clear_tree(ptree_hI, 0, sI);
				};
			}
			else
			{
				for (inner = 0; inner < block; inner++)
				{
					proj_cswap(ramifications[0][inner], ramifications[1][inner], (s_pos + 1) / 2);  // constant-time swap: + or -?
					xmul(ramifications[1][inner], L_STRATEGY[j][pos], (const fp*)ramifications[1][inner], (const fp*)C);	// mult. by l_pos of ramifications[1][inner]
					proj_cswap(ramifications[0][inner], ramifications[1][inner], (s_pos + 1) / 2);  // constant-time swap: + or -?
				};
			};
		}
		else
		{
			proj_cswap(ramifications[0][block], ramifications[1][block], (s_pos + 1) / 2);	// constant-time swap
			// Next branch depends on randomnes: probability of reaching the point at infinity (1/l_pos) 
			if (!isinfinity((const fp*)ramifications[0][block]))
			{
				for (inner = 0; inner < block; inner++)
				{
					xmul(ramifications[0][inner], L_STRATEGY[j][pos], (const fp*)ramifications[0][inner], (const fp*)C);	// mult. by l_pos of ramifications[0][inner]
					xmul(ramifications[1][inner], L_STRATEGY[j][pos], (const fp*)ramifications[1][inner], (const fp*)C);	// mult. by l_pos of ramifications[1][inner]
				};
			}
			else
			{
				for (inner = 0; inner < block; inner++)
				{
					proj_cswap(ramifications[0][inner], ramifications[1][inner], (s_pos + 1) / 2);  // constant-time swap: + or -?
					xmul(ramifications[1][inner], L_STRATEGY[j][pos], (const fp*)ramifications[1][inner], (const fp*)C);	// mult. by l_pos of ramifications[1][inner]
					proj_cswap(ramifications[0][inner], ramifications[1][inner], (s_pos + 1) / 2);  // constant-time swap: + or -?
				};
			};
		};
		// Configuring for the next iteration
		moves -= xmul_counter[block];
		xmul_counter[block] = 0;
		block -= 1;

	};

	M_pos = lookup(L_STRATEGY[j][0], (int8_t *)M);	// current bound to be used
	m_pos = lookup(L_STRATEGY[j][0], m);		// current number of isogeny constructions performed
	e_pos = lookup(L_STRATEGY[j][0], e);		// current secret vector entry
	s_pos = sign(e_pos);				// sign of the current secret vector entry
	if ( !isequal(m_pos, M_pos) )
	{
		proj_cswap(ramifications[0][0], ramifications[1][0], (s_pos + 1) / 2);	// constant-time swap
		// Next branch depends on randomnes: probability of reaching the point at infinity (1/l_pos) 
		if (!isinfinity((const fp*)ramifications[0][0]))
		{
			z_pos = isequal(e_pos, 0);						// constant-time comparison

			kps(L_STRATEGY[j][0], (const fp*)ramifications[0][0], (const fp*)C);	// kernel points computation
			xisog(T, L_STRATEGY[j][0], (const fp*)C);				// isogeny construction
			
			proj_cswap(C, T, z_pos ^ 1);	// constant-time swap: dummy?
			e_pos -= s_pos;			// decrementing the number of isogeny constructions performed
			m_pos += 1;			// incrementing the number of isogeny constructions reached

			update(L_STRATEGY[j][0], e_pos, e);	// constant-time update
			update(L_STRATEGY[j][0], m_pos, m);	// constant-time update
			if (L[L_STRATEGY[j][0]] > gap)
			{
				if (!scaled)
					clear_tree(rtree_hI, 0, sI);
				clear_tree(ptree_hI, 0, sI);
			};
		};
	};

	proj_copy(B, (const fp*)C);
}

// Group Action Evaluation (GAE)
void gae(fp b, int8_t const v[], fp const a)
{
	init_counters();	// set to zero the field operation counters
	int i, j, k, t;
	int8_t m[NUMBER_OF_PRIMES[0]],	// number of isogeny constructions reached 
	       e[NUMBER_OF_PRIMES[0]];	// secret integer vector to be modified

	// initializating vectors
	for (i = 0; i < (int)NUMBER_OF_PRIMES[0]; i++)
	{
		m[i] = 0;	// public integer
		e[i] = v[i];	// secret integer
	};

	// ------------------------------------------------------------------
	// memory allocations for the isogeny kernel: largest small odd prime
	setmemory();

	proj G[2], 	// kernel point generators
	     P[2], 	// Points on E[\pi + 1] and E[\pi - 1]
	     A, B;	// Projective Montgomery urve coefficients

	// ---------------------------------------------------------------------------------------
	// Writing the Montgomery curve affine coefficient into projective form (A' : C) = (a : 1)
	fp_copy(A[0], a);
	fp_set1(A[1]);
	// Required projective Montgomery curve are of the form (A' + 2C : 4C)
	fp_add(A[1], A[1], A[1]);       // 2C
	fp_add(A[0], A[0], A[1]);       // A' + 2C
	fp_add(A[1], A[1], A[1]);       // 4C

	// ---------------------------------------------------------------------------------------
	// Main loop: processing each strategy
	for (j = 0; j < NUMBER_OF_DIFFERENT_STRATEGIES; j++)
	{
		for (i = 0; i < ROUNDS[j]; i++)
		{
			elligator(P[1], P[0], (const fp*)A);	// Random points on the Montgomery curve
			// Next, we ensure the points P[0] and P[1] are of torsion (p + 1)
			for (t = 0; t < (int)cofactor; t++)
			{
				xdbl(P[0], (const fp*)P[0], (const fp*)A);	// point on E[\pi + 1]
				xdbl(P[1], (const fp*)P[1], (const fp*)A);	// point on E[\pi - 1]
			};
			for (t = 0; t < (N - (int)NUMBER_OF_PRIMES[j]); t++)
			{
				xmul(P[0], W_STRATEGY[j][t], (const fp*)P[0], (const fp*)A);
				xmul(P[1], W_STRATEGY[j][t], (const fp*)P[1], (const fp*)A);
			};
			// Next, we evaluate the current strategy
			strategy_evaluation(A, e, (const proj*)P, (const fp*)A, j, m);
		};
	};

	// ----------------------------------------------------------------
	// At this point, the missing isogeny constructions must be reached
	int8_t finished[NUMBER_OF_PRIMES[0]], mi, Mi, ei, si, zi, three;
	while (1)
	{
		t = 0;
		for (i = 0; i < (int)NUMBER_OF_PRIMES[0]; i++)
		{
			mi = lookup(L_STRATEGY[0][i], m);
			Mi = lookup(L_STRATEGY[0][i], (int8_t *)M);

			if (isequal(mi, Mi))
			{
				t += 1;
				finished[L_STRATEGY[0][i]] = 1;	// all the M_i degree-(l_i) isogeny constructions have been performed
			}
			else
				finished[L_STRATEGY[0][i]] = 0;	// there are missing degree-(l_i) isogeny constructions
		};

		// No more missing isogeny constructions ?
		if (t == (int)NUMBER_OF_PRIMES[0])
			break;

		t = NUMBER_OF_PRIMES[0] - t;
		assert(t > 0);
		elligator(P[1], P[0], (const fp*)A);	// random points
		for (i = 0; i < (int)cofactor; i++)
		{
			xdbl(P[0], (const fp*)P[0], (const fp*)A);	// point on E[\pi + 1]
			xdbl(P[1], (const fp*)P[1], (const fp*)A);	// point on E[\pi - 1]
		};

		for (i = 0; i < (N - (int)NUMBER_OF_PRIMES[0]); i++)
		{
			xmul(P[0], W_STRATEGY[0][i], (const fp*)P[0], (const fp*)A);
			xmul(P[1], W_STRATEGY[0][i], (const fp*)P[1], (const fp*)A);
		};

		// Next loop ensure that the points P[0] and P[1] are of torsion the producto of the missing l_i's
		for (i = 0; i < (int)NUMBER_OF_PRIMES[0]; i++)
		{
			if (finished[L_STRATEGY[0][i]])
			{
				xmul(P[0], L_STRATEGY[0][i], (const fp*)P[0], (const fp*)A);
				xmul(P[1], L_STRATEGY[0][i], (const fp*)P[1], (const fp*)A);
			};
		};

		k = 0;
		// ----------------------------------------------
		// main loop: processing missing degree isogenies
		// Next approach corresponds with the application of the multiplicative strategy
		for (i = 0; i < (int)NUMBER_OF_PRIMES[0]; i++)
		{
			if (finished[L_STRATEGY[0][i]])
			{
				continue;	// depends only on randomness
			}
			else
			{
				proj_copy(G[0], (const fp*)P[0]);
				proj_copy(G[1], (const fp*)P[1]);

				Mi = lookup(L_STRATEGY[0][i], (int8_t *)M);	// current bound to be used
				mi = lookup(L_STRATEGY[0][i], m);		// current number of isogeny constructions performed
				ei = lookup(L_STRATEGY[0][i], e);		// current secret vector entry
				si = sign(ei);					// sign of the current secret vector entry
			
				proj_cswap(G[0], G[1], (si + 1) / 2);	// constant-time swap
				proj_cswap(P[0], P[1], (si + 1) / 2);	// constant-time swap

                		for (j = (i + 1); j < (int)NUMBER_OF_PRIMES[0]; j++)
				{
					if (!finished[L_STRATEGY[0][j]])
						xmul(G[0], L_STRATEGY[0][j], (const fp*)G[0], (const fp*)A);
				};

				// Scalar multiplication is not required in the t-th isogeny (the last one)
				if (k < (t - 1))
					xmul(P[1], L_STRATEGY[0][i], (const fp*)P[1], (const fp*)A);

				// Next branch depends on randomnes: probability of reaching the point at infinity (1/l_pos) 
				if (!isinfinity((const fp*)G[0]))
				{

					zi = isequal(ei, 0);			// constant-time comparison
					proj_cswap(P[0], G[0], zi);		// constant-time swap: dummy?
					kps(L_STRATEGY[0][i], (const fp*)G[0], (const fp*)A);	// kernel points computation
					proj_cswap(P[0], G[0], zi);		// constant-time swap: dummy?

					xisog(B, L_STRATEGY[0][i], (const fp*)A);	// isogeny construction

					if (k < (t - 1))
					{
						// In dummy-isogeny constructions (and traditional velu) is possible to save one xmul procedure
						if (L[L_STRATEGY[0][i]] > gap)
							xmul(G[0], L_STRATEGY[0][i], (const fp*)G[0], (const fp*)A);// mult. by l_pos of ramifications[1][0]
						else
						{
							j = L[L_STRATEGY[0][i]] >> 1;
							three = isequal(L[L_STRATEGY[0][i]], 3);
							// Recall, kps_t returns the kernel but on a Twisted Edwards curve
							yadd(G[0], (const fp*)K[(j + three) - 1], (const fp*)K[0], (const fp*)K[(j + three) - 2]);
							proj_cswap(G[0], K[j], three ^ 1);
							yadd(G[0], (const fp*)K[j], (const fp*)K[j - 1], (const fp*)K[0]);	// mult. by l_pos of ramifications[0][0]?
							eds2mont(G[0]);				// now Z is on the Montgomery curve
						};

						xeval(P[0], L_STRATEGY[0][i], (const fp*)P[0], (const fp*)A);		// isogeny evaluation
						xeval(G[1], L_STRATEGY[0][i], (const fp*)P[1], (const fp*)A);		// isogeny evaluation

						proj_cswap(P[0], G[0], zi);		// constant-time swap: dummy?
						proj_cswap(P[1], G[1], zi ^ 1);		// constant-time swap: dummy?
					};

					proj_cswap(A, B, zi ^ 1);		// constant-time swap: dummy?
					ei -= si;				// decrementing the number of isogeny constructions performed
					mi += 1;				// incrementing the number of isogeny constructions reached

					update(L_STRATEGY[0][i], ei, e);	// constant-time update
					update(L_STRATEGY[0][i], mi, m);	// constant-time update
					if (L[L_STRATEGY[0][i]] > gap)
					{
						if (!scaled)
							clear_tree(rtree_hI, 0, sI);
						clear_tree(ptree_hI, 0, sI);
					};
				};

				proj_cswap(P[0], P[1], (si + 1) / 2);	// constant-time swap: + or -?
				k += 1;
			};
		};
	};

	// Ensuring exactly m_i degree-(l_i) isogeny constructions were performed
	for (i = 0; i < (int)NUMBER_OF_PRIMES[0]; i++)
	{
		// For avoiding wrong inputs,
		assert(isequal(m[L_STRATEGY[0][i]], M[L_STRATEGY[0][i]]));	// m is just a counter and M is the public bound
		assert(isequal(e[L_STRATEGY[0][i]], 0));			// e is the secret vector, which in the end must be the zero vector
	};

	coeff(b, (const fp*)A);
	freememory();
}
