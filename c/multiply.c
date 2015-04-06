// Multiplying two large numbers together

#include <stdio.h>
#include "measure_complexity.h"
#include "karatsuba.h"

int main(int argc, char *argv[]) {

	int nums[] = {5678, 1234};
	int i;
	int n1 = 10000;
	int result;

	clock_t start = clock();

	for (i = 0; i < n1; i++) {
		result = karatsuba(nums[0], nums[1]);
	}

	clock_t end = clock();

	return 0;
}