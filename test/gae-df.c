#include<time.h>

#define _C_CODE_
#include "csidh.h"
#include "styles.h"

static void fp_print(fp const a, char *c)
{
        int i;
        printf("%s := 0x", c);
        for(i=NUMBER_OF_WORDS-1; i > -1; i--)
                printf("%.16" PRIX64 "", a[i]);
        printf(";\n");
}

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

	for (i = 0; i < 1024; i++)
	{
		skgen(a);
		for (j = 0; j < N; j++)
			b[j] = -a[j];
	
		printf("// Doing %d experiment:\t", i);
		printf("%2d%%", 100 * i / (int)1024);
		fflush(stdout);
		printf("\r\x1b[K");

		// --------------------
		assert(fp_iszero(A));
		gae(A, a, A);
		assert(validate(A));
		// --------------------
		gae(A, b, A);
		assert(validate(A));
		if (!fp_iszero(A))
			fp_print(A, "A");
		assert(fp_iszero(A));
	};

	printf("// No errors!\n");
	return 0;
};
