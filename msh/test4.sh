#!/bin/bash
# today command works

# input
cat > temp-in.txt <<zzz
today
exit
zzz

# correct output
cat > gold-out.txt <<zzz
msh> $(date +%m/%d/%G)
msh> 
zzz

# actual output
rm -f temp-out.txt
./msh < temp-in.txt > temp-out.txt

diff -w temp-out.txt gold-out.txt > diffs.txt
