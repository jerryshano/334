#!/usr/bin/awk -f
# YOUR CODE HERE

{
if($1 == "{"){
    counter = counter +  1
}
if($1 == "}"){
    counter = counter - 1
        arr[counter] = ""
}
}

{
if(NF == 2){
    arr[counter] = $1
}
if(NF == 3 || NF == 4){
        for(x in arr){
                if(length(arr[x]) > 0){
                num_alpha = num_alpha arr[x] "_"
                }
        }
    num_alpha = num_alpha $1 ","
}
}

END{
gsub("\"","",num_alpha)
print "Identifier,\"Full name\"" "," num_alpha "comments"
}
