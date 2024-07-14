Function Create-SwitchParameter
{
	[cmdletbinding(SupportsShouldProcess=$True, confirmimpact="high")]
	Param($path)
	$path = Get-Process
	$path
}

Create-SwitchParameter -path /home/slaber/folder/newDirectory -whatIf


#command stops all processes on the computer
#Get-Process | #Stop-Process
#ConfirmImpact Property --> High, Medium, Low 
