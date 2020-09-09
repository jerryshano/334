#!/usr/bin/awk -f
# YOUR CODE HERE

BEGIN{FS=","}
{
 if($1 != "Identifier"){
  $1 = "Participant " $1
}
 if($4 == "prob_desc"){
 $4 = "comments"
}

if($2 == 1){
$2 = "3_a"
}
if($2 == 2){
$2 = "3_b"
}
if($2 == 3){
$2 = "3_c"
}
if($2 == 4){
$2 = "3_d"
}
if($2 == 5){
$2 = "3_e"
}
if($3 != 1) {
        if($2 == "3_a"){
        $3 = 10;
        }
        else if($2 == "3_b"){
        $3 = 5 ;
        }
        else if($2 == "3_c"){
        $3 = 5 ;
        }
        else if($2 == "3_d"){
        $3 = 5 ;
        }
        else if($2 == "3_e"){
        $3 =5 ;
        }
}
else if($3 ==1){
$3 = 0
}


print($1","$2","$3","$4)
}
