#!/usr/bin/awk -f
#YOUR CODE HERE

BEGIN{var=ID}
{
	a[NR]=$0
}

END{
	regex = "^"var"./"
	for(j=1; j<=NR; j++){
		if(a[j] ~ regex){
			print a[j+1]
		}
	}
}
