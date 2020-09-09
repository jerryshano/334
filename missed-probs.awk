#!/usr/bin/awk -f
# for *every* problem ID in input, give number of incorrect (non-0) answers

# YOUR CODE HERE

BEGIN {
	FS=","
	OFS=","
	count = 0
	id = 0
}

$3 != 0 { count += 1 }

END {
	print count
}