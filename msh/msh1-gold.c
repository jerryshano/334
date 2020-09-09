#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

/*
 * A very simple shell
 */

#define MAX_BUF 160

int main() {
    int ch;
    char s[MAX_BUF];
    static const char prompt[] = "msh> ";

    while (1) {
	// prompt for input
	printf(prompt);

	// read input
	char *status = fgets(s, MAX_BUF-1, stdin);

	// exit if ^d entered
	if (status == NULL) {
	    printf("\n");
	    exit(EXIT_SUCCESS);
	}

	// exit if "exit" entered
	if (strcmp(s, "exit\n") == 0) {
	    exit(EXIT_SUCCESS);
	}

	// handle case of input that is too long
	if (s[strlen(s)-1] != '\n') {
	    printf("error: input too long\n");
	    // clear the input buffer
	    while ((ch = getchar()) != '\n' && ch != EOF);
	    continue; 
	}

	// otherwise echo user input
	printf("%s",s);
    }
}
