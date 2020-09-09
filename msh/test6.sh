#!/bin/bash
# no such command

# input
cat > temp-in.txt <<zzz
fraggle
exit
zzz

# correct output
cat > gold-out.txt <<zzz
msh> msh: fraggle: No such file or directory
msh> msh> 
zzz

# actual output
rm -f temp-out.txt
./msh < temp-in.txt > temp-out.txt

diff -w temp-out.txt gold-out.txt > diffs.txt
