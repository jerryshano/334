#!/bin/bash
# input is echoed

# input
cat > temp-in.txt <<zzz
hello world
exit
zzz

# correct output
cat > gold-out.txt <<zzz
msh> hello world
msh> 
zzz

# actual output
rm -f temp-out.txt
./msh < temp-in.txt > temp-out.txt

diff -w temp-out.txt gold-out.txt > diffs.txt

