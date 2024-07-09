Function Create-Parameter
{
	param(
	[int]$number,
	[string]$name
	)

	Write-Host "`t`$number = '$number'"
	Write-Host "`t`$name = '$name'"

	if($number -eq 5) {
		Write-Host "T R U E.... Condition Parameter, Match"
	} else {
		Write-Host "F A L S E.... Condition Parameter, Not Match"
	}

} #end Create-Parameter

Write-Host "Condition Checking....."
Create-Parameter 2 Tomatoes
