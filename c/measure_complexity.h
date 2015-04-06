#ifndef MEASURE_COMPLEXITY_H
#define MEASURE_COMPLEXITY_H

#include <time.h>

double interval_in_ms(clock_t start, clock_t end);

double interval_in_ms(clock_t start, clock_t end) {
	return (double) (end - start)/CLOCKS_PER_SEC * 1000;
}
 
#endif /* MEASURE_COMPLEXITY_H */