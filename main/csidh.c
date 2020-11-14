#include<time.h>

#define _C_CODE_
#include "csidh.h"
#include "cycle.h"

int main()
{
	ticks cc0, cc1;	// for measuringthe clock cycles

	//------------------------------------------------------
	// Key generation
	printf("\033[0;33m// --------------\033[0m\n");
	printf("\033[0;33m// Key generation\033[0m\n");
	
	// ----------
	// Alice
	printf("\n\033[0;35m// Alice\033[0m\n");
	priv a;
	pub A, ss_a;
	cc0 = getticks();
	keygen(A, a);
	cc1 = getticks();
	sk_print(a, "sk_a");
	pk_print(A, "pk_a");
	printf("Running-time (millions): %2.03lfM + %2.03lfS + %2.03lfa = \033[1;35m%2.03lfM\033[0m\n", (1.0 * fpmul) / 1000000.0, (1.0 * fpsqr) / 1000000.0, (1.0 * fpadd) / 1000000.0, (1.0 * (fpmul + fpsqr)) / 1000000.0);
	printf("Clock cycles (millions): \033[1;35m%7.03lf\033[0m\n", ( 1.0 * (cc1 - cc0)) / 1000000.0);

	// ----------
	// Bob
	printf("\n\033[0;34m// Bob\033[0m\n");
	priv b;
	pub B, ss_b;
	cc0 = getticks();
	keygen(B, b);
	cc1 = getticks();
	sk_print(b, "sk_b");
	pk_print(B, "pk_b");
	printf("Running-time (millions): %2.03lfM + %2.03lfS + %2.03lfa = \033[1;34m%2.03lfM\033[0m\n", (1.0 * fpmul) / 1000000.0, (1.0 * fpsqr) / 1000000.0, (1.0 * fpadd) / 1000000.0, (1.0 * (fpmul + fpsqr)) / 1000000.0);
	printf("Clock cycles (millions): \033[1;34m%7.03lf\033[0m\n", ( 1.0 * (cc1 - cc0)) / 1000000.0);

	//------------------------------------------------------
	// Secret sharing derivation
	printf("\n\033[0;33m// -------------------------\033[0m\n");
	printf("\033[0;33m// Secret sharing generation\033[0m\n");
	
	// ----------------
	// Alice
	printf("\n\033[0;35m// Alice\033[0m\n");
	cc0 = getticks();
	assert(derive(ss_a, B, a));
	cc1 = getticks();
	pk_print(ss_a, "ss_a");
	printf("Running-time (millions) [without validation]: %2.03lfM + %2.03lfS + %2.03lfa = \033[1;35m%2.03lfM\033[0m\n", 
			(1.0 * fpmul) / 1000000.0, (1.0 * fpsqr) / 1000000.0, (1.0 * fpadd) / 1000000.0, (1.0 * (fpmul + fpsqr)) / 1000000.0);
	printf("Clock cycles (millions) [including validation]: \033[1;35m%7.03lf\033[0m\n", ( 1.0 * (cc1 - cc0)) / 1000000.0);
	
	// ----------------
	// Bob
	printf("\n\033[0;34m// Bob\033[0m\n");
	cc0 = getticks();
	assert(derive(ss_b, A, b));
	cc1 = getticks();
	pk_print(ss_b, "ss_b");
	printf("Running-time (millions) [without validation]: %2.03lfM + %2.03lfS + %2.03lfa = \033[1;34m%2.03lfM\033[0m\n", 
			(1.0 * fpmul) / 1000000.0, (1.0 * fpsqr) / 1000000.0, (1.0 * fpadd) / 1000000.0, (1.0 * (fpmul + fpsqr)) / 1000000.0);
	printf("Clock cycles (millions) [including validation]: \033[1;34m%7.03lf\033[0m\n", ( 1.0 * (cc1 - cc0)) / 1000000.0);

	// =============================
	// Verifying same secret sharing
	assert( fp_isequal(ss_a, ss_b) );

	//------------------------------------------------------
	printf("\n\033[0;32m// Successfully secret sharing computation!\033[0m\n");
	return 0;
}
