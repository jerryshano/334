#!/usr/bin/awk -f
# YOUR CODE HERE
BEGIN{
    var = 0
    i = "--."ID
}
{
    if (var == 1){
        print $0
        var = 0
    }
}
$0 ~ i{
    var = 1
}
