#include <assert.h>
#include<time.h>

#include "fp.h"

int main()
{
	int i;
	fp a, b, c, d;

	for (i = 0; i < 1024; i++)
	{
		printf("// Doing %d experiment:\t", i);
		printf("%2d%%", 100 * i / (int)1024);
		fflush(stdout);
		printf("\r\x1b[K");
                
		// Random elements of fp
		fp_random(a);
		fp_random(b);
		fp_copy(c, a);
		c[0] += 1;
		fp_copy(d, b);
		d[0] -= 1;

		assert(fp_isequal(a,b) == 0);	// different values check --> (a != b)
		assert(fp_isequal(c,c) == 1);	// equal values check --> 1 (c == c)
		assert(fp_issmaller(a,a) == 0);	// smaller than check --> 0 (a == a)
		assert(fp_issmaller(a,c) == 1);	// smaller than check --> 1 (a < c)
		assert(fp_issmaller(b,d) == 0);	// smaller than check --> 0 (b > d)

		uintbig_set1(a);	// Now a == 1
		fp_set0(b);	// Now b == 0

		assert(fp_iszero(a) == 0);
		assert(fp_iszero(b) == 1);

		// testing c - c
		fp_sub(d, c, c);
		assert(fp_iszero(d) == 1);

		// tetsing c * 0
		//fp_mul(d, c, b);
		assert(fp_iszero(d) == 1);

		// tetsing c * 1 ... recall, in Montgomery domain R mod p plays the role of the 1
		fp_set1(a);
		fp_mul(d, c, a);

/*		printf("\n");   
		for(i= 0; i<28;i++){
		printf("a[%i] = %lx\t", i, a[i]);
		printf("a[%i] = %lx\t", i, a[i]);
		printf("d[%i] = %lx\t", i, d[i]);
		printf("%lx\n", c[i]-d[i]);
		}
*/
		assert(fp_isequal(d, c) == 1);

		uintbig_set1(a);	// Now a == 1
		fp_pow(d, a, c);
		assert(fp_isequal(d, c) == 1);
		
		fp_set0(a);	// Now a == 0
		fp_pow(d, a, c);
		assert(fp_isone(d) == 1);

		fp_set1(a);	// Now a == R mod p
		fp_pow(d, c, a);
		assert(fp_isone(d) == 1);

		// Testing 1/a by computing (1/a) x a
		fp_random(a);
		fp_copy(b, a);
		fp_inv(a);
		fp_mul(c, a, b);
		assert(fp_isone(c) == 1);

		fp_random(a);
		fp_sqr(b, a);
		assert( fp_issquare(b) );

	};

	// Notice, all the above functions test all the field arithmetic and auxiliar functions required in the polynomial arithmetic.
	printf("// No errors!\n");
	return 0;
}
