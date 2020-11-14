#include "poly.h"
#include <assert.h>
#define nmax 32


int main(){
  int lenf, leng, n, e, iteration, array_size, tree_size, i, root, brother, *DEG, LENF;
  poly f, g, h, f_rev, f_rev_inv, *F, *H, *R, g1, g2, REM1, REM2, G1, G2, G1_rev, G2_rev, R0;
  fp c, fp_0, *A, *C, ratio, A0;
  fp_set0(fp_0);
  
  f_rev_inv = 0;
  
// TEST FOR RECIPROCAL
  for(lenf = 1; lenf < nmax; lenf++)
  {  
    printf("// Testing reciprocals:\t\t\t");
    printf("%2d%%", 100 * lenf / nmax);
    fflush(stdout);
    printf("\r\x1b[K");

    // Get random poly
    f = malloc(sizeof(fp)*lenf);
    for(e = 0; e < lenf; e++)
      fp_random(f[e]);

    for(n = 1; n < nmax; n++)
    {
      // Get the reciprocal and multiply them
      h = malloc(sizeof(fp)*n);
      reciprocal(h, c, f, lenf, n);
      poly_mul_low(h, n, f, lenf, h, n);

      // Compare with expected
      assert(fp_isequal(h[0],c));
      for(e = 1;  e < n; e++)
	assert(fp_iszero(h[e]));
      free(h);
    }
    free(f); 
  }
  printf("// Testing reciprocals:\t\t\tNo errors!\n");
  
  

  // TEST FOR REDUCTION
  for(lenf = 2; lenf < nmax; lenf++)
  {
    printf("// Testing polynomial reduction:\t");
    printf("%2d%%", 100 * lenf / nmax);
    fflush(stdout);
    printf("\r\x1b[K");

    // Get random poly for the mod
    f = malloc(sizeof(fp)*lenf);
    f_rev = malloc(sizeof(fp)*lenf);
    for(e = 0; e < lenf; e++)
    {
      fp_random(f[e]);
      fp_copy(f_rev[lenf-1-e], f[e]);
    }

    for(leng = 1; leng < nmax; leng++)
    {
      // Get random poly to reduce
      g = malloc(sizeof(fp)*leng);
      for(e = 0; e < leng; e++)
	fp_random(g[e]);

      // Get reverse-inverse mod x^(leng-lenf+1)
      if(leng >= lenf)
      {
	f_rev_inv = malloc(sizeof(fp)*(leng-lenf+1));
	reciprocal(f_rev_inv, c, f_rev, lenf, leng-lenf+1);
      }
      else
	fp_set1(c);
	
      // Compute the reduction
      h = malloc(sizeof(fp)*(lenf-1));
      poly_redc(h, g, leng, f, lenf, f_rev_inv, c);

      // Reduce manually
      int leng_red = leng;
      fp scale, f_e;
      while(leng_red >= lenf)
      {
	fp_copy(scale, f[lenf-1]);
	fp_inv(scale);
	fp_mul(scale, scale, g[leng_red-1]);
	for(e = 0; e < lenf; e++)
	  {
	    fp_mul(f_e, f[e], scale);
	    fp_sub(g[e+leng_red-lenf], g[e+leng_red-lenf], f_e);
	  }
	leng_red--;
      }

      // Rescale manual result
      if( leng < lenf)
	fp_set1(scale);
      else
	if(lenf == 2 && leng == 3)
	{
	  fp_sqr(scale, f[1]);
	  fp_add(scale, scale, scale);
	}
	else
	  fp_copy(scale, c);
      for(e = 0; e < leng_red; e++)
	fp_mul(g[e], g[e], scale);
     

      // Comapre results
      for(e = leng_red-1; e >= 0; e--)
	assert(fp_isequal(h[e], g[e]));
      for(e = leng_red; e < lenf-1; e++)
	assert(fp_iszero(h[e]));
      
      free(g);
      free(h);
      if(leng >= lenf)
	free(f_rev_inv);
    }
    free(f);
    free(f_rev);
  }
  printf("// Testing polynomial reduction:\tNo errors!\n");

  

// TEST FOR RECIPROCAL TREES
  
  for(tree_size = 2; tree_size < nmax; tree_size++)
  {
    printf("// Testing reciprocal tree:\t\t");
    printf("Tree size %d out of %d", tree_size, nmax);
    fflush(stdout);
    printf("\r\x1b[K");
    
    // Compute size of arrays
    i = 0;
    while((1<<i) < tree_size)
      i++;
    array_size = (1<<(i+2))-1;
    
    DEG = malloc(sizeof(int)*array_size);
    H = malloc(sizeof(poly)*array_size);
    R = malloc(sizeof(poly)*array_size);
    F = malloc(sizeof(poly)*tree_size);
    A = malloc(sizeof(fp)*array_size);
    
    // Get random polys
    LENF = 2;
    for(i = 0; i < tree_size; i++)
    {
      F[i] = malloc(sizeof(fp)*LENF);
      for(e = 0; e < LENF; e++)
	fp_random(F[i][e]);
    }
    
    // Get product tree then reciprocal tree
    product_tree(H, DEG, 0, F, LENF, tree_size);
    leng = DEG[0]+1+(rand() % nmax);
    reciprocal_tree(R, A, leng, H, DEG, 0, tree_size);
    
    // Check the root
    root = 0;
    lenf = leng-DEG[root];
    f = malloc(sizeof(fp)*lenf);
    for(e = 0; e < DEG[root]+1 && e < lenf; e++)
      fp_copy(f[e], H[root][DEG[root]-e]);
    for(e = DEG[root]+1; e < lenf; e++)
      fp_set0(f[e]);
    poly_mul_low(f, lenf, f, lenf, R[root], lenf);
    assert(fp_isequal(f[0], A[root]));
    for(e = 1; e < lenf; e++)
      assert(fp_iszero(f[e]));
    free(f);
    
    // Perform random walks
    for(iteration = 0; iteration < nmax - tree_size; iteration++)
    {
      root = 0;
      n = tree_size;
      while(n > 1)
      {
	if(rand() & 1)
	{
	  root = 2*root+1;
	  n = n - (n>>1);
	}
	else
	{
	  root = 2*root+2;
	  n = n>>1;
	}
	brother = root - 1 + 2*(root & 1);
	
	// Check current node
	if(DEG[root] > 2)
	{
	  lenf = DEG[brother];
	  f = malloc(sizeof(fp)*lenf);
	  for(e = 0; e < DEG[root]+1 && e < lenf; e++)
	    fp_copy(f[e], H[root][DEG[root]-e]);
	  for(e = DEG[root]+1; e < lenf; e++)
	    fp_set0(f[e]);
	  poly_mul_low(f, lenf, f, lenf, R[root], lenf);
	  assert(fp_isequal(f[0], A[root]));
	  for(e = 1; e < lenf; e++)
	    assert(fp_iszero(f[e]));
	  free(f);
	}
      }
    }
    // Clean up
    for(i = 0; i < tree_size; i++)
      free(F[i]);
    clear_tree(H, 0, tree_size);
    clear_tree(R, 0, tree_size);
    free(F);
    free(H);
    free(R);
    free(A);
    free(DEG);
  }
  printf("// Testing reciprocal tree:\t\tNo errors!\n");
  
  

  // TEST FOR REMAINDERS
  for(tree_size = 2; tree_size < nmax; tree_size++)
  {
    printf("// Testing batched remainders:\t\t");
    printf("Tree size %d out of %d", tree_size, nmax);
    fflush(stdout);
    printf("\r\x1b[K");
    
    // Compute size of arrays
    i = 0;
    while((1<<i) < tree_size)
      i++;
    array_size = (1<<(i+2))-1;
    
    DEG = malloc(sizeof(int)*array_size);
    H = malloc(sizeof(poly)*array_size);
    R = malloc(sizeof(poly)*array_size);
    F = malloc(sizeof(poly)*tree_size);
    A = malloc(sizeof(fp)*array_size);
    REM1 = malloc(sizeof(fp)*array_size);
    REM2 = malloc(sizeof(fp)*array_size);
    C = malloc(sizeof(fp)*tree_size);
    
    // Get random polys
    LENF = 2;
    for(i = 0; i < tree_size; i++)
    {
      F[i] = malloc(sizeof(fp)*LENF);
      for(e = 0; e < LENF; e++)
	fp_random(F[i][e]);
    }
    
    // Get product tree, reciprocal tree, and remainders
    product_tree(H, DEG, 0, F, LENF, tree_size);
    leng = DEG[0]+1+(rand() % nmax);
    g1 = malloc(sizeof(fp)*leng);
    g2 = malloc(sizeof(fp)*leng);
    for(e = 0; e < leng; e++)
    {
      fp_random(g1[e]);
      fp_random(g2[e]);
    }
    reciprocal_tree(R, A, leng, H, DEG, 0, tree_size);
    multieval_unscaled(REM1, g1, leng, R, (const fp*)A, H, DEG, 0, tree_size);
    multieval_unscaled(REM2, g2, leng, R, (const fp*)A, H, DEG, 0, tree_size);
    
    for(i = 0; i < tree_size; i++)
    {
      // Get ratio of the remainder
      fp_inv(REM1[i]);
      fp_mul(ratio, REM1[i], REM2[i]);
      
      // Compute remainders manually
      f_rev = malloc(sizeof(fp)*LENF);
      f_rev_inv = malloc(sizeof(fp)*(leng-LENF+1));
      h = malloc(sizeof(fp)*(LENF-1));
      for(e = 0; e < LENF; e++)
	fp_copy(f_rev[e], F[i][LENF-1-e]);
      reciprocal(f_rev_inv, c, f_rev, LENF, leng-LENF+1);
      poly_redc(h, g1, leng, F[i], LENF, f_rev_inv, c);
      fp_copy(REM1[i], h[0]);
      poly_redc(h, g2, leng, F[i], LENF, f_rev_inv, c);
      fp_copy(REM2[i], h[0]);
      free(f_rev);
      free(f_rev_inv);
      free(h);

      // Compare results
      fp_inv(REM1[i]);
      fp_mul(REM1[i], REM1[i], REM2[i]);
      assert(fp_isequal(REM1[i], ratio));
    }
		 
    // Clean up
    for(i = 0; i < tree_size; i++)
      free(F[i]);
    free(g1);
    free(g2);
    clear_tree(H, 0, tree_size);
    clear_tree(R, 0, tree_size);
    free(F);
    free(H);
    free(R);
    free(A);
    free(DEG);
    free(REM1);
    free(REM2);
    free(C);
  } 
  printf("// Testing batched remainders:\t\tNo errors!\n");
  


// TEST FOR SCALED REMAINDER TREE
  for(tree_size = 1; tree_size < nmax; tree_size++)
  {
    printf("// Testing scaled remainder tree:\t");
    printf("Tree size %d out of %d", tree_size, nmax);
    fflush(stdout);
    printf("\r\x1b[K");
    
    // Compute size of arrays
    i = 0;
    while((1<<i) < tree_size)
      i++;
    array_size = (1<<(i+2))-1;
    
    DEG = malloc(sizeof(int)*array_size);
    H = malloc(sizeof(poly)*array_size);
    F = malloc(sizeof(poly)*tree_size);
    REM1 = malloc(sizeof(fp)*array_size);
    REM2 = malloc(sizeof(fp)*array_size);
    
    // Get random polys
    LENF = 2;
    for(i = 0; i < tree_size; i++)
    {
      F[i] = malloc(sizeof(fp)*LENF);
      for(e = 0; e < LENF; e++)
	fp_random(F[i][e]);
    }
    
    // Get random polys to reduce
    product_tree(H, DEG, 0, F, LENF, tree_size);
    leng = DEG[0]+1+(rand() % nmax);
    g1 = malloc(sizeof(fp)*leng);
    g2 = malloc(sizeof(fp)*leng);
    for(e = 0; e < leng; e++)
    {
      fp_random(g1[e]);
      fp_random(g2[e]);
    }

    // Get the required initial nodes
    G1 = malloc(sizeof(fp)*DEG[0]);
    G2 = malloc(sizeof(fp)*DEG[0]);
    G1_rev = malloc(sizeof(fp)*DEG[0]);
    G2_rev = malloc(sizeof(fp)*DEG[0]);
    R0 = malloc(sizeof(fp)*(leng));
    f_rev = malloc(sizeof(fp)*(DEG[0]+1));
    for(e = 0; e < DEG[0]+1; e++)
      fp_copy(f_rev[e], H[0][DEG[0]-e]);
    if( DEG[0] > leng-DEG[0])
      reciprocal(R0, A0, f_rev, DEG[0]+1, DEG[0]);
    else
      reciprocal(R0, A0, f_rev, DEG[0]+1, leng-DEG[0]);
    poly_redc(G1, g1, leng, H[0], DEG[0]+1, R0, A0);
    poly_redc(G2, g2, leng, H[0], DEG[0]+1, R0, A0);
    for(e = 0; e < DEG[0]; e++)
    {
      fp_copy(G1_rev[e], G1[DEG[0]-1-e]);
      fp_copy(G2_rev[e], G2[DEG[0]-1-e]);
    }
    poly_mul_middle(G1_rev, G1_rev, DEG[0], R0, DEG[0]);
    poly_mul_middle(G2_rev, G2_rev, DEG[0], R0, DEG[0]);
    for(e = 0; e < DEG[0]; e++)
    {
      fp_copy(G1[e], G1_rev[DEG[0]-1-e]);
      fp_copy(G2[e], G2_rev[DEG[0]-1-e]);
    }
    free(G1_rev);free(G2_rev);free(R0);free(f_rev);

    // Compute the scaled remainder trees
    multieval_scaled(REM1, G1, H, DEG, 0, tree_size);
    multieval_scaled(REM2, G2, H, DEG, 0, tree_size);
    
    for(i = 0; i < tree_size; i++)
    {
      // Get ratio of the remainder
      fp_inv(REM1[i]);
      fp_mul(ratio, REM1[i], REM2[i]);

      // Compute remainders manually
      f_rev = malloc(sizeof(fp)*LENF);
      f_rev_inv = malloc(sizeof(fp)*(leng-LENF+1));
      h = malloc(sizeof(fp)*(LENF-1));
      for(e = 0; e < LENF; e++)
	fp_copy(f_rev[e], F[i][LENF-1-e]);
      reciprocal(f_rev_inv, c, f_rev, LENF, leng-LENF+1);
      poly_redc(h, g1, leng, F[i], LENF, f_rev_inv, c);
      fp_copy(REM1[i], h[0]);
      poly_redc(h, g2, leng, F[i], LENF, f_rev_inv, c);
      fp_copy(REM2[i], h[0]);
      free(f_rev);free(f_rev_inv);free(h);

      // Compare results
      fp_inv(REM1[i]);
      fp_mul(REM1[i], REM1[i], REM2[i]);
      assert(fp_isequal(REM1[i], ratio));
    }
		 
    // Clean up
    for(i = 0; i < tree_size; i++)
      free(F[i]);
    free(F);free(g1);free(g2);free(G1);free(G2);
    clear_tree(H, 0, tree_size);free(H);free(DEG);
    free(REM1);free(REM2);
  } 
  printf("// Testing scaled remainder tree:\tNo errors!\n");
  
  printf("// All tests passed.\n");
}
