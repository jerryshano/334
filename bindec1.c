#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int helper(int n) {
	int num = n;
	int dec_value = 0;

	int base = 1;

	int temp = num;
	while (temp) {
		int last_digit = temp % 10;
		temp = temp / 10;

		dec_value += last_digit * base;

		base = base * 2;
	}

	return dec_value;
}
int main() {
	char input[100];
	printf(">");
	while (fgets(input, 99, stdin) != NULL)
	{
		bool letter = false;

		for (int i = 0; i < strlen(input); i++) {
			if ((input[i] >= 'a' && input[i] <= 'z') || (input[i] >= 'A' && input[i] <= 'Z')|| input[i] >= '2') {
				letter = true;
				continue;
			}
		}

		if (letter) {
			printf("input must contain only zeros and ones\n");
			printf(">");
			letter = false;
		}
		else {
			int y = atoi(input);
			printf("%d\n", helper(y));
			printf(">");
		}
	
	}
	return 0;
}
