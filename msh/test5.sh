#!/bin/bash
# multiple commands are accepted

# input
cat > temp-in.txt <<zzz
wc -l test1.sh
wc -c test2.sh
exit
zzz

# correct output
cat > gold-out.txt <<zzz
4 test1.sh
244 test2.sh
msh> msh> msh> 
zzz

# actual output
rm -f temp-out.txt
./msh < temp-in.txt > temp-out.txt

diff -w temp-out.txt gold-out.txt > diffs.txt
