#!/usr/bin/awk -f
# YOUR CODE HERE

BEGIN{
fail_count = 0
count = 0
}

$3 ~ /Alloc/ { 
 if ($5 > 0){
	count += 1
	}

	else{
		fail_count += 1
	}
}
    
END{
	 print "num successes: " count "; " "num failures: "  fail_count
}
