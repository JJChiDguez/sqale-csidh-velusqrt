#ifndef _ISOG_H_
#define _ISOG_H_

#include "mont.h"
#include "poly.h"

#include "ijk.h"

#define scaled 0	// Our implementation allows that (unscaled) remainder tree approach is faster than the scaled approach
#define gap 83

int sI, sJ, sK;	// Sizes of each current I, J, and K
//int sizeI[N], sI, sI_max,
//    sizeJ[N], sJ, sJ_max,
//    sizeK[N], sK, sK_max;	// Sizes of each I, J, and K

poly *I,		// I plays also as the linear factors of the polynomial h_I(X)
     *EJ_0, *EJ_1;	// To be used in xisog y xeval

proj *J, *K;		// Finite subsets of the kernel
fp *XZJ4,		// -4* (Xj * Zj) for each j in J, and x([j]P) = (Xj : Zj)
   *rtree_A,		// constant multiple of the reciprocal tree computation
   A0;			// constant multiple of the reciprocal R0

poly *ptree_hI,		// product tree of h_I(X)
     *rtree_hI,		// reciprocal tree of h_I(X)
     *ptree_EJ,		// product tree of E_J(X)
     R0;		// Reciprocal of h_I(X) required in the scaled remainder tree approach

int *deg_ptree_hI,	// degree of each noed in the product tree of h_I(X)
    *deg_ptree_EJ;	// degree of each node in the product tree of E_J(X)

fp *leaves;		// leaves of the remainder tree, which are required in the Resultant computation

void eds2mont(proj P);						// mapping from Twisted edwards into Montogmery
void yadd(proj R, proj const P, proj const Q, proj const PQ);	// differential addition on Twisted edwards model
void CrissCross(fp r0, fp r1, fp const alpha, fp const beta, fp const gamma, fp const delta);

void kps_t(uint64_t const i, proj const P, proj const A);	// tvelu formulae
void kps_s(uint64_t const i, proj const P, proj const A);	// svelu formulae

void xisog_t(proj B, uint64_t const i, proj const A);	// tvelu formulae
void xisog_s(proj B, uint64_t const i, proj const A);	// svelu formulae

void xeval_t(proj Q, uint64_t const i, proj const P);			// tvelu formulae
void xeval_s(proj Q, uint64_t const i, proj const P, proj const A);	// svelu formulae

/*
// Reading sizes of I and J coded as in the Python-code of "Optimal Strategies for CSIDH"
static inline void read_sizes()
{
        FILE *ijk;

        // File name must be stored as string
        char prefix[13] = "./src/ijk/\0",
             path[(int)strlen(suffix) + 12 + 1];

        snprintf(path, sizeof(path), "%s%s", prefix, suffix);

        ijk = fopen(path, "r");		// reading sizes
        assert(NULL != ijk);		// ensuring the file exists

        // Reading line by line
        int i = 0;
	sI = 0;
	sJ = 0;
        while (EOF != fscanf(ijk, "%d %d[^\n]", &sizeJ[i], &sizeI[i]))
        {
                fgetc(ijk);	// Removing breakline character

		assert(sizeJ[i] <= sizeI[i]);
		sizeK[i] = ( (L[i] - 2 -  ((sizeI[i] * sizeJ[i]) << 2) - 1) >> 1 ) + 1;
		assert(sizeK[i] >= 0);

		// We compute max_I (#I) and max_J (#J)
		if (sI_max < sizeI[i])
			sI_max = sizeI[i];
		if (sJ_max < sizeJ[i])
			sJ_max = sizeJ[i];

		i += 1;
        };

	sK_max = ((int)L[N - 1] >> 1) + 1;
        assert(i == N);
        fclose(ijk);
}
*/

static inline void setmemory()
{
	int i;
        I = (poly *)malloc(sizeof(poly) * sI_max);      // required in velusqrt
        for (i = 0; i < sI_max; i++)
        {
                I[i] = (fp *)malloc( sizeof(fp) * 2);
                memset(I[i], 0, sizeof(fp) * 2 );
        };
        leaves = (fp *)malloc(sizeof(fp) * sI_max);     // required in velusqrt

        J = (proj *)malloc(sizeof(proj) * sJ_max);      // required in velusqrt
        XZJ4 = (fp *)malloc(sizeof(fp) * sJ_max);
        memset(XZJ4, 0, sizeof(int) * sJ_max );
        EJ_0 = (poly *)malloc(sizeof(poly) * sJ_max);   // required in velusqrt
        EJ_1 = (poly *)malloc(sizeof(poly) * sJ_max);   // required in velusqrt
        for (i = 0; i < sJ_max; i++)
        {
                EJ_0[i] = (fp *)malloc( sizeof(fp) * 3);
                memset(EJ_0[i], 0, sizeof(fp) * 3 );
                EJ_1[i] = (fp *)malloc( sizeof(fp) * 3);
                memset(EJ_1[i], 0, sizeof(fp) * 3 );
        };

        K = (proj *)malloc(sizeof(proj) * sK_max);      // required in both velu and velusqrt
	memset(K, 0, sizeof(proj) * sK_max);
        // --------------------------------------------------------------
        // ALlocating memory for the tree structures required in velusqrt

        // Regarding h_I(X)
        i = 0;
        while ((1 << i) < sI_max) i++;
        deg_ptree_hI = (int *)malloc( sizeof(int) * ( (1 << (i+2)) - 1 ) );     // degree of each node in the product tree
        memset(deg_ptree_hI, 0, sizeof(int) * ((1 << (i+2)) - 1) );

        ptree_hI = (poly *)malloc( sizeof(poly) * ( (1 << (i+2)) - 1) );        // product tree
	if (!scaled)
	{
		// (unscaled) remainder tree approach
	        rtree_hI = (poly *)malloc( sizeof(poly) * ( (1 << (i+2)) - 1) );// (pseudo-)reciprocal tree
	        rtree_A = (fp *)malloc( sizeof(fp) * ( (1 << (i+2)) - 1) );	// constant multiples of each node in the reciprocal tree
        	memset(rtree_A, 0, sizeof(fp) * ((1 << (i+2)) - 1) );
	}
	else
	{
		// scaled remainder tree approach
		R0 = (fp *)malloc( sizeof(fp) * (2*sJ_max + 1) );		// (pseudo-)reciprocal of h_I(X)
                memset(R0, 0, sizeof(fp) * (2*sJ_max + 1) );
	}

        // Regarding E_J(X)
        i = 0;
        while ((1 << i) < sJ_max) i++;
        deg_ptree_EJ = (int *)malloc( sizeof(int) * ( (1 << (i+2)) - 1 ) );     // degree of each node in the product tree
        memset(deg_ptree_EJ, 0, sizeof(int) * ((1 << (i+2)) - 1) );
        ptree_EJ = (poly *)malloc( sizeof(poly) * ( (1 << (i+2)) - 1) );        // product tree
        // --------------------------------------------------------------
}

static inline void freememory()
{
	int i;
        free(ptree_EJ);
        free(deg_ptree_EJ);

	if (!scaled)
	{
		// (unscaled) remainder tree approach
	        free(rtree_A);
        	free(rtree_hI);
	}
	else
	{
		// scaled remainder tree approach
		free(R0);
	};

        free(ptree_hI);
        free(deg_ptree_hI);

        free(K);

        for (i = 0; i < sJ_max; i++)
	{
                free(EJ_0[i]);
                free(EJ_1[i]);
	};

        free(EJ_0);
        free(EJ_1);
        free(XZJ4);
        free(J);

        free(leaves);
        for (i = 0; i < sI_max; i++)
                free(I[i]);
        free(I);
}

// hybrid velu formulae
static inline void kps(uint64_t const i, proj const P, proj const A)	
{
	// Next branch only depends on a fixed public bound (named gap)
	if (L[i] <= gap)
		kps_t(i, P, A);
	else
		kps_s(i, P, A);
}

static inline void xisog(proj B, uint64_t const i, proj const A)
{
	// Next branch only depends on a fixed public bound (named gap)
	if (L[i] <= gap)
		xisog_t(B, i, A);
	else
		xisog_s(B, i, A);
}

static inline void xeval(proj Q, uint64_t const i, proj const P, proj const A)
{
	// Next branch only depends on a fixed public bound (named gap)
	if (L[i] <= gap)
		xeval_t(Q, i, P);
	else
		xeval_s(Q, i, P, A);
}


#endif
