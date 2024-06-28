$value = 1..5
ForEach($i in $value)
{
	if($i -eq 4) { exit }
	$i
}
"Exit Program"
