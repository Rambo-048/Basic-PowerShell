Function Test-ModulePath
{
	$A = "$env:userProfile\documents\WindowsPowerShell\Modules"
	$B = "$env:Userprofile\my documents\WindowsPowerShell\Modules"

	if ([int](Get-OperatingSystemVersion).substring(0,1) -ge 6)
	{
		if(-not(Test-Path -path $A))
		{
			New-Item -Path $A -itemtype directory | Out-Null
		} #end if
	} #end if
	
	Else
	{
		if(-not(Test-Path -path $B))
		{
			New-Item -path $B -itemtype directory | Out-Null
		} #end if
	} #end else
} #end Test-ModulePath
