#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>


void main() {

	int num, binary_val, decimal_val = 0, base = 1, rem;

	printf("Enter a binary number ");
	scanf("%d", &num);
	binary_val = num;
	while (num > 0)
	{
		rem = num % 10;
		decimal_val = decimal_val + rem * base;
		num = num/10;
		base = base * 2;

	}


	printf("Binary number entered: %d \n", binary_val);
	printf("Decimal output: %d \n", decimal_val);

}
