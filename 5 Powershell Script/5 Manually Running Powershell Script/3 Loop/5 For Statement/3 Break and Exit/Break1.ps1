$value = 1..5
ForEach($i in $value)
{
	if($i -eq 3) { break }
	$i
}
"The Program Break"
