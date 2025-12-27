$value = 1..30
ForEach($i in $value)
{
	if($i -eq 15) { exit }
	$i
}
"Exit Program"
