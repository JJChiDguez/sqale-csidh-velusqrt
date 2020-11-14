#define _C_CODE_
#include "csidh.h"

// Public Montogmery curve affine coefficient generation
void pkgen(pub pk, priv const sk)
{
	gae(pk, sk, fp_0);	// Public base Montgomery curve affine coefficient is always(?) ser as zero: [sk] * E_0
}

// Public (Montgomery curve affine coefficient) and private (integer vector) keys generation
void keygen(pub pk, priv sk)
{
	skgen(sk);		// random private integer vector
	pkgen(pk, sk);		// Public Montgomery curve affine coefficient: [sk] * E_0
}

// Secret sharing derivation (Montgomery curve affine coefficient)
bool derive(pub ss, pub const pk, priv const sk)
{
	if (!validate(pk)) return 0;	// validating the input Montgomery curve affine coefficiente (it must be supersingular!)
	//printf("Public key validation (running-time): %luM + %luS + %lua\n", fpmul, fpsqr, fpadd);
	gae(ss, sk, pk);	// Secrect sharing Montgomery curve affine coefficient: [sk] * pk
	return 1;
}
