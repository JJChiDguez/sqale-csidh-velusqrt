#ifndef _STYLE_H_
#define _STYLE_H_

// This header can use three variants for the group action evaluation (using strategies like SIDH)
// wd2 : with dummy isogeny cosuntructions and two torsion points
// wd1 : with dummy isogeny cosuntructions and one torsion point
// df  : dummy-free variant using two torsion points

#if defined P512
	#if defined wd2
	#include "strategy/csidh-512-wd2.h"
	#elif defined wd1
	#include "strategy/csidh-512-wd1.h"
	#else
	#include "strategy/csidh-512-df.h"
	#endif

#elif defined P1024
	#if defined wd2
	#include "strategy/csidh-1024-wd2.h"
	#elif defined wd1
	#include "strategy/csidh-1024-wd1.h"
        #else
	#include "strategy/csidh-1024-df.h"
	#endif

#elif defined P1792
	#if defined wd2
	#include "strategy/csidh-1792-wd2.h"
	#elif defined wd1
	#include "strategy/csidh-1792-wd1.h"
        #else
	#include "strategy/csidh-1792-df.h"
	#endif

#elif defined P2048
	#if defined wd2
	#include "strategy/csidh-2048-wd2.h"
	#elif defined wd1
	#include "strategy/csidh-2048-wd1.h"
        #else
	#include "strategy/csidh-2048-df.h"
	#endif

#elif defined P3072
	#if defined wd2
	#include "strategy/csidh-3072-wd2.h"
	#elif defined wd1
	#include "strategy/csidh-3072-wd1.h"
        #else
	#include "strategy/csidh-3072-df.h"
	#endif

#elif defined P4096
	#if defined wd2
	#include "strategy/csidh-4096-wd2.h"
	#elif defined wd1
	#include "strategy/csidh-4096-wd1.h"
        #else
	#include "strategy/csidh-4096-df.h"
	#endif

#elif defined P5120
	#if defined wd2
	#include "strategy/csidh-5120-wd2.h"
	#elif defined wd1
	#include "strategy/csidh-5120-wd1.h"
        #else
	#include "strategy/csidh-5120-df.h"
	#endif

#elif defined P6144
	#if defined wd2
	#include "strategy/csidh-6144-wd2.h"
	#elif defined wd1
	#include "strategy/csidh-6144-wd1.h"
        #else
	#include "strategy/csidh-6144-df.h"
	#endif

#elif defined P8192
	#if defined wd2
	#include "strategy/csidh-8192-wd2.h"
	#elif defined wd1
	#include "strategy/csidh-8192-wd1.h"
        #else
	#include "strategy/csidh-8192-df.h"
	#endif

#elif defined P9216
	#if defined wd2
	#include "strategy/csidh-9216-wd2.h"
	#elif defined wd1
	#include "strategy/csidh-9216-wd1.h"
        #else
	#include "strategy/csidh-9216-df.h"
	#endif

#endif

#endif

