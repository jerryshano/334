# extract node information from an OSM file
   
# YOUR CODE HERE
  BEGIN  {
           FS = "\""
           OFS = ","
           print "node_id,lat,long"
   }
   
  /\<node id/ {
  
    print $2,$4,$6
  
}