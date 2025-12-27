$value = 1..35
ForEach($i in $value)
{
	if($i -eq 20) { exit }
	$i
}
"Exit Program"
