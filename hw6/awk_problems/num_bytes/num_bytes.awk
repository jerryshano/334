#!/usr/bin/awk -f
# YOUR CODE HERE

BEGIN{
	
}

$3 ~ /Alloc/{
	if(length($3) == 8){
		print substr($3, 7, 1)
	}
	else{
		print substr($3, 7, 2)
	}
}