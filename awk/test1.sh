#!/bin/bash
# get problem 6

rm -f temp.txt
./get-problem.awk -v ID=6 student-code.sql > temp.txt
diff -w temp.txt gold1.txt > diffs.txt
