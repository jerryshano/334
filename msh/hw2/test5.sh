#!/bin/bash
# msh handles too-long input

# input
cat > temp-in.txt <<zzz
123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-1234567890
exit
zzz

# correct output
cat > gold-out.txt <<zzz
msh> error: input too long
msh> 
zzz

# actual output
rm -f temp-out.txt
./msh < temp-in.txt > temp-out.txt

diff -w temp-out.txt gold-out.txt > diffs.txt
