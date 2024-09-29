$a = New-Object Data

for ($i = 0 ; $Error.Count ; $i++)
{
	$Error[$i].CategoryInfo
	$Error[$i].ErrorDetails
	$Error[$i].Exception
	$Error[$i].FullyQualifiedErrorId
	$Error[$i].InvocationInfo
	$Error[$i].TargetObject
}
