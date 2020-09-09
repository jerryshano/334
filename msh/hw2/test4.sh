#!/bin/bash
# msh can execute multiple commands

# input
cat > temp-in.txt <<zzz
foo
bar baz
exit
zzz

# correct output
cat > gold-out.txt <<zzz
msh> foo
msh> bar baz
msh> 
zzz

# actual output
rm -f temp-out.txt
./msh < temp-in.txt > temp-out.txt

diff -w temp-out.txt gold-out.txt > diffs.txt
