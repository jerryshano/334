#!/bin/bash
# xform scores.csv

rm -f temp.txt
./xform-c.awk scores.csv > temp.txt
diff -w temp.txt gold1.txt > diffs.txt
