#include<time.h>
#include <math.h>

#define _C_CODE_
#include "csidh.h"
#include "cycle.h"

// A utility function to swap two elements
void swap(ticks* a, ticks* b)
{
	ticks t = *a;
	*a = *b;
	*b = t;
}

/* This function takes last element as pivot, places
   the pivot element at its correct position in sorted
    array, and places all smaller (smaller than pivot)
   to left of pivot and all greater elements to right
   of pivot */
int partition (ticks arr[], int low, int high)
{
	ticks pivot = arr[high];    // pivot
	int i = (low - 1);  // Index of smaller element

	int j;
	for(j = low; j <= high- 1; j++)
	{
		// If current element is smaller than the pivot
		if(arr[j] < pivot)
		{
			i++;    // increment index of smaller element
			swap(&arr[i], &arr[j]);
		}
	}
	swap(&arr[i + 1], &arr[high]);
	return (i + 1);
}

/* The main function that implements QuickSort
 arr[] --> Array to be sorted,
  low  --> Starting index,
  high  --> Ending index */
void quicksort(ticks arr[], int low, int high)
{
	if (low < high)
	{
		/* pi is partitioning index, arr[p] is now at right place */
		int pi = partition(arr, low, high);

		// Separately sort elements before
		// partition and after partition
		quicksort(arr, low, pi - 1);
		quicksort(arr, pi + 1, high);
	}
}

int main()
{
	int i, its = 1024;	// number of iterations

	// --------------------------
	// For measuring clock cycles
	ticks cc_min = 0xFFFFFFFFFFFFFFFF, cc_max = 0;
	ticks cc_median = 0, cc_mean = 0, cc_stdev = 0;
	ticks cc_sample[its], cc0, cc1;

	// ------------------------------------------------
	// For measuing the running-time (field operations)
	uint64_t add_min = 0xFFFFFFFFFFFFFFFF, add_max = 0, 
		 sqr_min = 0xFFFFFFFFFFFFFFFF, sqr_max = 0, 
		 mul_min = 0xFFFFFFFFFFFFFFFF, mul_max = 0;

	uint64_t add_median = 0, add_mean = 0, add_stdev = 0, 
		 sqr_median = 0, sqr_mean = 0, sqr_stdev = 0, 
		 mul_median = 0, mul_mean = 0, mul_stdev = 0;
	
	uint64_t add_sample[its], 
		 sqr_sample[its], 
		 mul_sample[its];

	//------------------------------------------------------
	// Main loop
	pub A;
	priv a;
	keygen(A, a);
	for (i = 0; i < its; i++)
	{
		printf("// Doing %d experiments:\t", i);
		printf("%2d%%", 100 * i / its);
		fflush(stdout);
		printf("\r\x1b[K");
		// ----------------

		skgen(a);

		cc0 = getticks();
		derive(A, (const uint64_t*)A, (const int8_t*)a);
		cc1 = getticks();

		// ---------------------------------
		// storing the measured clock cycles
		cc_sample[i] = cc1 - cc0;
		// Minimum value
		if(cc_min > cc_sample[i])
			cc_min = cc_sample[i];
		// Maximum value
		if(cc_max < cc_sample[i])
			cc_max = cc_sample[i];
		// Average value
		cc_mean += cc_sample[i];

		// storing the meausred running-time
		add_sample[i] = fpadd;
		sqr_sample[i] = fpsqr;
		mul_sample[i] = fpmul;
		// Minimu values
		if(add_min > add_sample[i])
			add_min = add_sample[i];
		if(sqr_min > sqr_sample[i])
			sqr_min = sqr_sample[i];
		if(mul_min > mul_sample[i])
			mul_min = mul_sample[i];
		// Maximum values
		if(add_max < add_sample[i])
			add_max = add_sample[i];
		if(sqr_max < sqr_sample[i])
			sqr_max = sqr_sample[i];
		if(mul_max < mul_sample[i])
			mul_max = mul_sample[i];
		// Average values
		add_mean += add_sample[i];
		sqr_mean += sqr_sample[i];
		mul_mean += mul_sample[i];
	};

	cc_mean = cc_mean / its;
	add_mean = add_mean / its;
	sqr_mean = sqr_mean / its;
	mul_mean = mul_mean / its;

	for (i = 0; i < its; ++i)
	{
		cc_stdev += (cc_sample[i] - cc_mean)*(cc_sample[i] - cc_mean);
		add_stdev += (add_sample[i] - add_mean)*(add_sample[i] - add_mean);
		sqr_stdev += (sqr_sample[i] - sqr_mean)*(sqr_sample[i] - sqr_mean);
		mul_stdev += (mul_sample[i] - mul_mean)*(mul_sample[i] - mul_mean);
        };

	cc_stdev = cc_stdev / (its - 1);
	add_stdev = add_stdev / (its - 1);
	sqr_stdev = sqr_stdev / (its - 1);
	mul_stdev = mul_stdev / (its - 1);

	quicksort(cc_sample, 0, its - 1);
        quicksort((ticks *)mul_sample, 0, its - 1);
        quicksort((ticks *)sqr_sample, 0, its - 1);
        quicksort((ticks *)add_sample, 0, its - 1);

	printf("Average\t[running-time (millions): %7.03lfM + %7.03lfS + %7.03lfa = \033[0;32m%7.03lfM\033[0m]\t(clock cycles (millions): \033[1;32m%7.03lf\033[0m)\n", 
			(1.0 * mul_mean) / 1000000.0, (1.0 * sqr_mean) / 1000000.0, (1.0 * add_mean) / 1000000.0, (1.0 * (mul_mean + sqr_mean)) / 1000000.0, 
			(1.0 * cc_mean) / 1000000.0 );

	// -----------------------------------------------------------
	printf("\n");
	cc_median = cc_sample[its/4];
	add_median = add_sample[its/4];
	sqr_median = sqr_sample[its/4];
	mul_median = mul_sample[its/4];
	printf("Q1\t[running-time (millions): %7.03lfM + %7.03lfS + %7.03lfa = \033[0;33m%7.03lfM\033[0m]\t(clock cycles (millions): \033[1;33m%7.03lf\033[0m)\n", 
			(1.0 * mul_median) / 1000000.0, (1.0 * sqr_median) / 1000000.0, (1.0 * add_median) / 1000000.0, (1.0 * (mul_median + sqr_median)) / 1000000.0, 
			(1.0 * cc_median) / 1000000.0 );
	cc_median = (cc_sample[its/2] + cc_sample[its/2 - 1]) / 2;
	add_median = (add_sample[its/2] + add_sample[its/2 - 1]) / 2;
	sqr_median = (sqr_sample[its/2] + sqr_sample[its/2 - 1]) / 2;
	mul_median = (mul_sample[its/2] + mul_sample[its/2 - 1]) / 2;
	printf("Median\t[running-time (millions): %7.03lfM + %7.03lfS + %7.03lfa = \033[0;33m%7.03lfM\033[0m]\t(clock cycles (millions): \033[1;33m%7.03lf\033[0m)\n", 
			(1.0 * mul_median) / 1000000.0, (1.0 * sqr_median) / 1000000.0, (1.0 * add_median) / 1000000.0, (1.0 * (mul_median + sqr_median)) / 1000000.0, 
			(1.0 * cc_median) / 1000000.0 );
	cc_median = cc_sample[(3 * its)/4];
	add_median = add_sample[(3 * its)/4];
	sqr_median = sqr_sample[(3 * its)/4];
	mul_median = mul_sample[(3 * its)/4];
	printf("Q3\t[running-time (millions): %7.03lfM + %7.03lfS + %7.03lfa = \033[0;33m%7.03lfM\033[0m]\t(clock cycles (millions): \033[1;33m%7.03lf\033[0m)\n", 
			(1.0 * mul_median) / 1000000.0, (1.0 * sqr_median) / 1000000.0, (1.0 * add_median) / 1000000.0, (1.0 * (mul_median + sqr_median)) / 1000000.0, 
			(1.0 * cc_median) / 1000000.0 );
	
	// -----------------------------------------------------------
	printf("\n");
	printf("Min\t[running-time (millions): %7.03lfM + %7.03lfS + %7.03lfa = \033[0;34m%7.03lfM\033[0m]\t(clock cycles (millions): \033[1;34m%7.03lf\033[0m)\n", 
			(1.0 * mul_min) / 1000000.0, (1.0 * sqr_min) / 1000000.0, (1.0 * add_min) / 1000000.0, (1.0 * (mul_min + sqr_min)) / 1000000.0, 
			(1.0 * cc_min) / 1000000.0 );
	printf("Max\t[running-time (millions): %7.03lfM + %7.03lfS + %7.03lfa = \033[0;31m%7.03lfM\033[0m]\t(clock cycles (millions): \033[1;31m%7.03lf\033[0m)\n", 
			(1.0 * mul_max) / 1000000.0, (1.0 * sqr_max) / 1000000.0, (1.0 * add_max) / 1000000.0, (1.0 * (mul_max + sqr_max)) / 1000000.0, 
			(1.0 * cc_max) / 1000000.0 );
	printf("\n");
	printf("Stdev\t[running-time (millions): %7.03lfM + %7.03lfS + %7.03lfa = \033[0;35m%7.03lfM\033[0m]\t(clock cycles (millions): \033[1;35m%7.03lf\033[0m)\n", 
			sqrt(mul_stdev) / 1000000.0, sqrt(sqr_stdev) / 1000000.0, sqrt(add_stdev) / 1000000.0, (sqrt(mul_stdev) + sqrt(sqr_stdev)) / 1000000.0, 
			sqrt(cc_stdev) / 1000000.0 );

	// -----------------------------------------------------	
	return 0;
}
