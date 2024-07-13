function new-function
{
	#[cmdletbinding()]
	Param($a)
	$a
	#$args
}

new-function 0,1,2,3,4,5,6,7,8,9
