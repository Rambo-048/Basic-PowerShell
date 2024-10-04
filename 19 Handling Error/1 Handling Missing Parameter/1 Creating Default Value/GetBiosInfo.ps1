Param(
	[string]$computerName
) #end param

Function Get-BiosInformation($computerName)
{
	Get-WmiObject -class Win32_Bios -computerName $computername
} #end function Get-BiosName

# *** Entry Point To Script ***
If(-not($computerName)) { $computerName = $env:computerName }
Get-BiosInformation -computerName $computername
