// Karatsuba multiplication algorithm
#ifndef KARATSUBA_H
#define KARATSUBA_H

int karatsuba(int num1, int num2) {
	int a = num1 / 100;
	int b = num1 % 100;
	int c = num2 / 100;
	int d = num2 % 100;

	int ac = a * c;
	int bd = b * d;
	int abcd = (a + b) * (c + d);

	int intermediary = abcd - bd - ac;
	int result = ac * 10000 + bd + intermediary * 100;


	return result;
}

int get_int_len (unsigned int value) {
	
	int length = 1;

	while (value > 9) {
		length++;
		value /= 10;
	}

	return length;
}
 
#endif /* KARATSUBA_H */