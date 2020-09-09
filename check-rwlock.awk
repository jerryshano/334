#!/usr/bin/bash

BEGIN {read_count = 0;
write_count = 0;
maxr = 0;
maxw = 0;
write_write = 0;
read_write = 0;
}

/sr/ {
   read_count++
   if(read_count > maxr) {
       maxr = read_count
   }
}

/sw/ {
   write_count++
   if(write_count > maxw) {
       maxw = write_count
   }
}

/dr/ {
    read_count--
}

/dw/ {
    write_count--
}

{
    if(read_count == 1 && write_count != 0) {
        read_write = 1
    }

    if(write_count > 1) {
        write_write = 1
    }
}

END {
   print "maxr = " maxr ", maxw = " maxw

   if (read_write == 1) {
       print "reader/writer test: FAIL"
   }
    else {
	print "reader/writer test: PASS"
    }

   if (write_write == 1) {
       print "writer/writer test: FAIL"
   }
    else {
	print "writer/writer test: PASS"
    }
}
