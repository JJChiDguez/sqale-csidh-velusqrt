#include "poly.h"
#include <assert.h>

void slow_mul(poly h, poly f, int lenf, poly g, int leng){
  // Computes h = f*g by school method

  fp a, b;
  int nf, ng, e;
  int lenh = lenf + leng - 1;
  
  if(lenh <= 0){
    return;
  }
  
  fp fg[lenh];
  
  if (leng > lenf){
    slow_mul(h, g, leng, f, lenf);
    return;
  }
  
  for(e = 0; e < lenh; e++){

    if (lenf - 1 < e){
      nf = lenf - 1;
    }
    else{
      nf = e;
    }

    ng = e - nf;
    fp_set0(a);
    while( (ng < leng) & (nf >= 0) ){
      fp_mul(b, f[nf], g[ng]);
      fp_add(a, a, b);
      nf--;
      ng++;
    }
    fp_copy(fg[e], a);
  }
  for(e = 0; e < lenh; e++){
    fp_copy(h[e], fg[e]);
  }
  return;
}



int main(){
  #define nmax 32
  int nf, ng, n, e;

  
  
  //TEST MULTIPLICATION BY 0
  
  for(nf = 2; nf < nmax; nf++){
    fp f[nf], h[nf-1];

    printf("// Testing multiplication by 0:\t\t");
    printf("%2d%%", 100 * nf / nmax);
    fflush(stdout);
    printf("\r\x1b[K");
    
    for(e = 0; e < nf; e++){
      fp_random(f[e]);
    }
    poly_mul(h, f, nf, f, 0);
    for(e = 0; e < nf-1; e++){
      assert(fp_iszero(h[e])==1);
    }
    poly_mul(h, f, 0, f, nf);
    for(e = 0; e < nf-1; e++){
      assert(fp_iszero(h[e])==1);
    }
  }
  printf("// Testing multiplication by 0:\t\tNo errors!\n");

  
  
  //TEST FOR f, g, h DISJOINT MEMORY SPACES
  
  for(nf = 1; nf < nmax; nf++){
    
    printf("// Testing multiplication:\t\t");
    printf("%2d%%", 100 * nf / nmax);
    fflush(stdout);
    printf("\r\x1b[K");
    
    for(ng = 1; ng < nmax; ng++){
      
      fp f[nf];   //Random length nf poly
      for(e = 0; e < nf; e++){
	fp_random(f[e]);
      }
      
      fp g[ng];  // Random length ng poly
      for(e = 0; e < ng; e++){
	fp_random(g[e]);
      }
      
      fp h[nf+ng-1];// Compute product
      poly_mul(h, f, nf, g, ng);

      fp fg[nf+ng-1]; // Compute the product by school method
      slow_mul(fg, f, nf, g, ng);
      
      for(e = 0; e < nf + ng - 1; e++){   // Verify answer term by term
	assert(fp_isequal(h[e], fg[e])==1);
      }
    }
  }
  printf("// Testing multiplication:\t\tNo errors!\n");

  

  // TEST FOR f, g CONTIGIOUS AND RESULT SAVED OVER THEM
    
  for(nf = 1; nf < nmax; nf++){
          
    printf("// Testing multiplication in place:\t");
    printf("%2d%%", 100 * nf / nmax);
    fflush(stdout);
    printf("\r\x1b[K");
    
    for(ng = 1; ng < nmax; ng++){
      
      fp h[nf+ng];
      
      //Random length nf poly
      for(e = 0; e < nf; e++){
	fp_random(h[e]);
      }
      
      // Random length ng poly
      for(e = 0; e < ng; e++){
	fp_random(h[e+nf]);
      }

      // Compute the product
      fp fg[nf+ng-1];
      slow_mul(fg, h, nf, &(h[nf]), ng); // School method
      poly_mul(h, h, nf, &(h[nf]), ng); // Karatsuba method


      for(e = 0; e < nf + ng - 1; e++){   // Verify answer term by term
	assert(fp_isequal(h[e], fg[e])==1);
      }
    }
  }
    printf("// Testing multiplication in place:\tNo errors!\n");

    
    
  //TEST FOR MULTIPLICATION MOD X^N BY 0
    
  for(nf = 2; nf < nmax; nf++){
    fp f[nf];
    
    printf("// Testing mul mod x^n by 0:\t\t");
    printf("%2d%%", 100 * nf / nmax);
    fflush(stdout);
    printf("\r\x1b[K");
    
    for(e = 0; e < nf; e++){
      fp_random(f[e]);
    }
    
    for(n = 1; n < nmax; n++){
      fp h[n];
      poly_mul_low(h, n, f, nf, f, 0);
      for(e = 0; e < n; e++){
	assert(fp_iszero(h[e])==1);
      }
      poly_mul_low(h, n, f, 0, f, nf);
      for(e = 0; e < n; e++){
	assert(fp_iszero(h[e])==1);
      }
    }
  }
  printf("// Testing mul mod x^n by 0:\t\tNo errors!\n");

  
  
  //TEST FOR MULTIPLICATION MOD X^N
    
    for(nf = 1; nf < nmax; nf++){
    
      printf("// Testing mul mod x^n:\t\t\t");
      printf("%2d%%", 100 * nf / nmax);
      fflush(stdout);
      printf("\r\x1b[K");
      
      for(ng = 1; ng < nmax; ng++){

	fp f[nf], g[ng], fg[nf+ng-1];
	poly h;

	//Get random polynomials
	for(e = 0; e < nf; e++){
	  fp_random(f[e]);
	}
	for(e = 0; e < ng; e++){
	  fp_random(g[e]);
	}
	
	//Save regular result to fg
	slow_mul(fg, f, nf, g, ng);

	//Compute result mod x^n
	for(n = 1; n < 2*nmax; n++){
	  h = malloc(sizeof(fp)*n);
	  poly_mul_low(h, n, f, nf, g, ng);

	  //Compare with expected
	  e = 0;
	  while(e < nf+ng-1 && e < n){
	    assert(fp_isequal(h[e], fg[e]) == 1);
	    e++;
	  }
	  while(e < n){
	    assert(fp_iszero(h[e]) == 1);
	    e++;
	  }
	  free(h);
	}
      }
    }
    printf("// Testing mul mod x^n:\t\t\tNo errors!\n");

  
     
  //TEST FOR POLY_MUL_MIDDLE
    
    for(nf = 1; nf < 2*nmax; nf+=1){
      fp f[nf];
      
      printf("// Testing poly_mul_middle:\t\t");
      printf("%2d%%", 100 * nf / nmax);
      fflush(stdout);
      printf("\r\x1b[K");
      
      for(ng = (nf+1)>>1; ng < (nf+1)-((nf+1)>>1); ng++){
	// This runs from floor((nf+1)/2) to ceil((nf+1)/2)
	fp g[ng];
	for(e = 0; e < nf; e++){
	  fp_random(f[e]);
	}
	for(e = 0; e < ng; e++){
	  fp_random(g[e]);
	}
	
	fp h[nf+ng-1];
	slow_mul(h, g, ng, f, nf);
	poly_mul_middle(g, g, ng, f, nf);
      
	for(e = 0; e < ng; e++){
	  assert(fp_isequal(h[e+nf-ng], g[e])==1);
	}
      }
    }
    printf("// Testing poly_mul_middle:\t\tNo errors!\n");

  
  // TEST FOR SELF RECIPROCAL MULTIPLICATION
    for(nf = 1; nf < nmax; nf++){

      printf("// Testing self reciprocal mul:\t\t");
      printf("%2d%%", 100 * nf / nmax);
      fflush(stdout);
      printf("\r\x1b[K");

      for(ng = 1; ng < nmax; ng++){
      
	fp f[nf], g[ng], h[nf+ng-1], fg[nf+ng-1];

	// Get random palyndromes
	for(e = 0; e < (nf>>1); e++){
	  fp_random(f[e]);
	  fp_copy(f[nf-1-e], f[e]);
	}
	if(nf & 1){
	  fp_random(f[nf>>1]);
	}

	for(e = 0; e < (ng>>1); e++){
	  fp_random(g[e]);
	  fp_copy(g[ng-1-e], g[e]);
	}
	if(ng & 1){
	  fp_random(g[ng>>1]);
	} 

	// Compute products
	poly_mul_selfreciprocal(h, g, ng, f, nf);
	slow_mul(fg, g, ng, f, nf);

	// Compare
	for(e = 0; e < nf+ng-1; e++){
	  assert(fp_isequal(fg[e], h[e])==1);
	}
      }
    }		 
    printf("// Testing self reciprocal mul:\t\tNo errors!\n");

  // TEST FOR PRODUCT TREES
    int tree_size, iteration, i;
    int  len, *DEG, LENF;
    poly *H, *F, h;
    
    for(tree_size = 1; tree_size < nmax; tree_size++){

      printf("// Testing product tree:\t\t");
      printf("Size %d out of %d", tree_size, nmax-1);
      fflush(stdout);
      printf("\r\x1b[K");

      i = 0;
      while((1<<i) < tree_size){
	i++;
      }
      DEG = malloc(sizeof(int)*((1<<(i+2))-1));
      H = malloc(sizeof(poly)*((1<<(i+2))-1));
      F = malloc(sizeof(poly)*tree_size);
      h = malloc(sizeof(fp)*(nmax+1)*tree_size);

      for(iteration = 0; iteration < nmax + 1 - tree_size ; iteration++){

	// Generate random list of polynomials
	LENF = (rand() % nmax)+1;
	for(i = 0; i < tree_size; i++){
	  F[i] = malloc(sizeof(fp)*LENF);
	  for(e = 0; e < LENF; e++){
	    fp_random(F[i][e]);
	  }
	}
	product_tree(H, DEG, 0, F, LENF, tree_size);
	
	// Build product of all polynomials manually
	len = LENF;
	
	//for(e = 0; e < LENF[0]; e++){
	for(e = 0; e < LENF; e++){
	  fp_copy(h[e], F[0][e]);
	}
	for(i = 1; i < tree_size; i++){
	  poly_mul(h, h, len, F[i], LENF);
	  len += LENF-1;
	}

	// Compare to root
	assert (len == DEG[0]+1);
	for(e = 0; e < len; e++){
	  assert(fp_isequal(H[0][e], h[e])==1);
	}
      }

      clear_tree(H, 0, tree_size);
      for(i = 0; i < tree_size; i++){
	free(F[i]);
      }
      free(DEG);
      free(H);
      free(F); 
      free(h);
    }
    printf("// Testing product tree:\t\tNo errors!\n");
    
  // TEST FOR SELF RECIPROCAL PRODUCT TREES
    
    for(tree_size = 1; tree_size < nmax; tree_size++){

      printf("// Testing selfreciprocal product tree:\t");
      printf("Size %d out of %d", tree_size, nmax-1);
      fflush(stdout);
      printf("\r\x1b[K");

      i = 0;
      while((1<<i) < tree_size){
	i++;
      }
      DEG = malloc(sizeof(int)*((1<<(i+2))-1));
      H = malloc(sizeof(poly)*((1<<(i+2))-1));
      F = malloc(sizeof(poly)*tree_size);
      h = malloc(sizeof(fp)*(nmax+1)*tree_size);

      for(iteration = 0; iteration < nmax + 1 - tree_size ; iteration++){

	// Generate random list of polynomials
	LENF = (rand() % nmax)+1;;
	for(i = 0; i < tree_size; i++){
	  F[i] = malloc(sizeof(fp)*LENF);
	  for(e = 0; e < (LENF>>1); e++){
	    fp_random(F[i][e]);
	    fp_copy(F[i][LENF-1-e], F[i][e]);
	  }
	  if(LENF & 1){
	  	fp_random(F[i][(LENF>>1)]);
	  }
	}
	product_tree_selfreciprocal(H, DEG, 0, F, LENF, tree_size);
	
	// Build product of all polynomials manually
	len = LENF;
	for(e = 0; e < LENF; e++){
	  fp_copy(h[e], F[0][e]);
	}
	for(i = 1; i < tree_size; i++){
	  poly_mul(h, h, len, F[i], LENF);
	  len += LENF-1;
	}

	// Compare to root
	assert (len == DEG[0]+1);
	for(e = 0; e < len; e++){
	  assert(fp_isequal(H[0][e], h[e])==1);
	}
      }

      clear_tree(H, 0, tree_size);
      for(i = 0; i < tree_size; i++){
	free(F[i]);
      }
      free(DEG);
      free(H);
      free(F); 
      free(h);
    }
    printf("// Testing selfreciprocal product tree:\tNo errors!\n");
    
    printf("// All tests passed.\n");
    return 0;
}
  
