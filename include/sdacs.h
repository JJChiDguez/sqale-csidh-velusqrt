#ifndef _SDACS_H_
#define _SDACS_H_

#if defined P512
	#include "sdacs/p512.h"

#elif defined P1024
	#include "sdacs/p1024.h"

#elif defined P1792
	#include "sdacs/p1792.h"

#elif defined P2048
	#include "sdacs/p2048.h"

#elif defined P3072
	#include "sdacs/p3072.h"

#elif defined P4096
	#include "sdacs/p4096.h"

#elif defined P5120
	#include "sdacs/p5120.h"

#elif defined P6144
	#include "sdacs/p6144.h"

#elif defined P8192
	#include "sdacs/p8192.h"

#elif defined P9216
	#include "sdacs/p9216.h"

#endif

#endif
