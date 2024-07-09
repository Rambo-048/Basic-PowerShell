Function Create-Parameter
{
	param(
	[int]$number,
	[string]$name1,
	[string]$name2cls
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
Create-Parameter 5 Kecap Manis
Write-Host "----------------------"
Create-Parameter 3 Jeruk Nipis
Write-Host "----------------------"
Create-Parameter 7 Cabe Rawit
Write-Host "----------------------"
Create-Parameter 10 Lombok Besar


