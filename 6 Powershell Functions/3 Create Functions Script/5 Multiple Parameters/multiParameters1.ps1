Function Create-Parameter
{
	param(
	[int]$Parameter1,
	[String]$Parameter2 = "This Is String",
	$Parameter3
	)

	Write-Host "`t`$Parameter1 = '$Parameter1'"
	Write-Host "`t`$Parameter2 = '$Parameter2'"
	Write-Host "`t`$Parameter3 = '$Parameter3'"

} #end Create-Parameter

Write-Host "ABC"
Write-Host "GOOD"
Create-Parameter 10 So Good
