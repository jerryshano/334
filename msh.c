#include <stdio.h>
#include <string.h>

// hello world in C

int main() {

char userInput[64];
   printf("msh> \n");
while(fgets(userInput, 64, stdin) != NULL){

	printf("userInput is: %s", userInput);

if (strncmp (userInput, "exit", 4) == 0){
printf("breaking..\n");
	break;

}//if

}//while
  
printf("pgm quitting..\n");

 return 0;
}

