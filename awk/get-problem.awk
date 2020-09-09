!/usr/bin/awk -f
#YOUR CODE HERE

BEGIN{
	vsr = 0
	i = "--."ID"\."
}

{
	if(vsr == 1){
		print($0)
		vsr = 0
	}
}

$0 ~ i{
	vsr=1
}
