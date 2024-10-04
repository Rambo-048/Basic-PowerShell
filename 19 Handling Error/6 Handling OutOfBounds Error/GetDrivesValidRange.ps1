Param(
	[Parameter(Mandatory=$true)]
	[ValidateRange("c","d")]
	[string]$drive,
	[string]$computerName = $env:computerName
) #end param

Function Get-DiskInformation($computerName,$drive)
{
	Get-WmiObject -class Win32_volume -computername $computername `
	-filter "DriveLetter = '$drive`:'"
} #end function Get-BiosName

# *** Entry Point To Script ***
Get-DiskInformation -computername $computerName -drive $drive
