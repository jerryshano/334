#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// a simple parser for this BNF grammar:
// expr ::= a | ( expr )

// input token
char tok[10];

// return the next token from standard input as a string,
// or return NULL if there is no more input
char *lexan() {
  int n;
  n = scanf("%s", tok);
  if (n == EOF) {
    return NULL;
  }
  return tok;
}

// print an error message and exit
void error(char* msg) {
  printf("%s\n", msg);
  exit(1);
}

// return if standard input follows the syntax for expr,
// else print error message and exit
void expr() {
  char *lookahead;      // the lookahead token

  // read the next token
  lookahead = lexan();

  if (lookahead == NULL) {
    // input is empty
    error("no");
  } else if (strcmp(lookahead, "a") == 0) {
    // "a" was read
    ;
  } else if (strcmp(lookahead, "(") == 0) {
    // "(" was read; an expr and then ")" should follow
    expr();
    lookahead = lexan();
    if (lookahead == NULL || strcmp(lookahead, ")") != 0) {
      error("no");
    } 
  } else {
    // an expr must start with "a" or (
    error("no");
  }
}

// print 'yes' if standard input follows the syntax for an expr,
// else print 'no'
int main() {
  expr();
  // the input should be one expr only
  if (lexan() != NULL) {
    error("no");
  }
  printf("yes\n");
}

