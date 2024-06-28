$value = 1..10
ForEach($i in $value)
{
	if($i -eq 9) { exit }
	$i
}
"Exit Program"
