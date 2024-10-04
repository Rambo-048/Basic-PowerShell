Param(
	[Parameter(Mandatory=$true)]
	[string]$drive,
	[string]$computerName = $env:computerName
) #end param

Function Check-AllowedValue($drive, $computerName)
{
	$drives = $null
	Get-WmiObject -class Win32_Volume -computername $computerName |
	Where-Object { $_.DriveLetter } |
	ForEach-Object { $drives += @{ $_.DriveLetter = $_.DriveLetter } }
	$drives.contains($drive)
} #end function Check-AllowedValue

Function Get-DiskInformation($computerName,$drive)
{
	Get-WmiObject -class Win32_volume -computername $computername -filter "DriveLetter = '$drive'"
} #end function Get-BiosName

# *** Entry Point To Script ***
if(Check-AllowedValue -drive $drive -computername $computerName)
{
	Get-DiskInformation -computername $computerName -drive $drive
}
else
{
	Write-Host -foregroundcolor blue "$drive is not an allowed value:"
}
