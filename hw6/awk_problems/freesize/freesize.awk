#! /usr/bin/awk -f
# YOUR CODE HERE
{if ($2 == "List")
	print($5)
}
