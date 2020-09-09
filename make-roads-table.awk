#!/usr/bin/awk -f

BEGIN{
   seq_num = 0;
   OFS = ",";
}
{
   if($1 == "<?xml"){
      print("road,way_id,seq_num,node_id")
    }
}

/<way id/,/<\/way>/{

   if ($0 ~ /<way id/){
   split($0, myarray, "\"");
   way_id = myarray[2];
}

if ($0 ~ /<nd ref/){
   split($0, myarray, "\"");
   node_id = myarray[2];
   node_arr[seq_num++] = node_id;
}

if ($0 ~ /<tag k=\"name\"/){
    split($0 , myarray, "\"");
    road = myarray[4];
}

if ($0 ~/v=\"service/){
   split($0, myarray,"\"");
   road = "unnamed";
}
if ($0 ~ /v=\"tertiary"/){
   split($0, myarray, "\"");
   road = "unnamed";
}
}
/<\/way>/{
for(i = 0; i < seq_num; i++)
    print road, way_id, i + 1, node_arr[i];

seq_num = 0;

}
