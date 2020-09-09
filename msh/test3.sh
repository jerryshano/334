#!/bin/bash
# ls command works

# input
cat > temp-in.txt <<zzz
ls
exit
zzz

# correct output
touch gold-out.txt
ls > gold-out.txt
cat >> gold-out.txt <<zzz
msh> msh>
zzz

# actual output
rm -f temp-out.txt
./msh < temp-in.txt > temp-out.txt

diff -w temp-out.txt gold-out.txt > diffs.txt
