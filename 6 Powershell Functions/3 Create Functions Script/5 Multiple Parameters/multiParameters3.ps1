Function Create-Parameter
{
	param(
	[int]$number,
	[string]$name1,
	[string]$name2
	)

	Write-Host "`t`$number = '$number'"
	Write-Host "`t`$name1 = '$name1'"
	Write-Host "`t`$name2 = '$name2'"

	if($number -lt 10) {
		Write-Host "T R U E"
	} else {
		Write-Host "F A L S E"
	}

} #end Create-Parameter

Write-Host "Condition Checking....."
Create-Parameter 2 Tomato Sauce
