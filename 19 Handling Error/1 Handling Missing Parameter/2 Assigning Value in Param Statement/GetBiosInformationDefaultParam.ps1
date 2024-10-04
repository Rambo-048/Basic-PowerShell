Param(
	[string]$computerName = $env:computername
) #end param

Function Get-BiosInformation($computerName)
{
	Get-WmiObject -class Win32_Bios -computername $computername
} #end function Get-BiosName

# *** Entry Point To Script ***
Get-BiosInformation -computerName $computername
