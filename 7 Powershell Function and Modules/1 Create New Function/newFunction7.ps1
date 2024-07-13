function new-function
{
	Param($a,$b)
	$a
	$b
	if($args.count -gt 0) {Write-Error "Error Error, Do not have enough parameters"}
}

new-function 1 2 3 4 5 6 7 8 9
