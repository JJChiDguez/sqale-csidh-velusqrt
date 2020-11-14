#include<time.h>

#define _C_CODE_
#include "csidh.h"
#include "styles.h"

int main()
{
	int i, j;	
	priv a, b;

	// ---------------------------------------------------------------------------------------
	// Testing the accesses and modifications on the integer vectors (private keys and bounds)
	skgen(a);
	for (i = 0; i < N; i++)
		b[i] = a[i];

	for (i = 0; i < (int)NUMBER_OF_PRIMES[0]; i++)
	{
		assert( (a[i] >= -(int8_t)M[i]) && (a[i] <= (int8_t)M[i]) );
		assert( (sign(a[i]) * a[i]) >= 0);
		if (a[i] == 0)
			assert(sign(a[i]) == 0);

		update(i, a[i] + 1, b);
		for (j = 0; j < N; j++)
		{
			if (i != j)
				assert( b[j] == a[j] );
			else
				assert( b[j] != a[j] );
		};
		update(i, a[i], b);
	};

	// ---------------------------------------------------------------------------------------
	// Testing both of the strategy evaluation and the group action evaluation (gae)
	
	pub A;
	fp_set0(A);	// We start with the Montgomery curve y^2 = x^3 + x

	// --------------------
	for (i = 0; i < N; i++)
		a[i] = 0;

	gae(A, a, A);
	assert(validate(A));
	assert( fp_iszero(A) );

	// --------------------
	for (i = 0; i < N; i++)
		a[i] = 1;

	gae(A, a, A);
	assert(validate(A));
	gae(A, a, A);
	assert(validate(A));
	gae(A, a, A);
	assert(validate(A));
	assert( fp_iszero(A) );

	// general test
	for (i = 0; i < 1024; i++)
	{
		skgen(a);
	
		printf("// Doing %d experiment:\t", i);
		printf("%2d%%", 100 * i / (int)1024);
		fflush(stdout);
		printf("\r\x1b[K");

		// --------------------
		gae(A, a, A);
		assert(validate(A));
	};

	printf("// No errors!\n");
	return 0;
};
