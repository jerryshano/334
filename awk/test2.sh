#!/bin/bash
# get problem 12 

rm -f temp.txt
./get-problem.awk -v ID=12 student-code.sql > temp.txt
diff -w temp.txt gold2.txt > diffs.txt
