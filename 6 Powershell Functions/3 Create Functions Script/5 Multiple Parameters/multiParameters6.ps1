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

	if($number -ne 5) {
		Write-Host "F A L S E"
	} else {
		Write-Host "T R U E"
	}

} #end Create-Parameter

Write-Host "Condition Checking....."
Create-Parameter 5 Bawang Merah
Write-Host "----------------------"
Create-Parameter 5 Bawang Putih
