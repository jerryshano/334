#!/usr/bin/awk -f
# return average length of line in input file

# YOUR CODE HERE

BEGIN {
   numChar = 0;
   lines = 0;
}

{
   if(length($0) >= 1)
   {
      lines = lines + 1
      numChar = numChar + length($0)
   }
}

END{
     avg = numChar/lines
     printf("%d\n", avg);
}