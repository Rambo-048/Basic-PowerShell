Function Create-Parameter
{
	param(
	[int]$Parameter1,
	[String]$Parameter2 = "Not Many People Will Accompany You When They See You In A Situation That Could Harm Them",
	$Parameter3
	)

	Write-Host "`t`$Parameter1 = '$Parameter1'"
	Write-Host "`t`$Parameter2 = '$Parameter2'"
	Write-Host "`t`$Parameter3 = '$Parameter3'"

} #end Create-Parameter

Write-Host "LONELY"
Write-Host "FUNNY"
Create-Parameter 10 So Good
