#!/bin/bash
# get problem 2

rm -f temp.txt
./get-problem.awk -v ID=2 student-code.sql > temp.txt
diff -w temp.txt gold3.txt > diffs.txt
