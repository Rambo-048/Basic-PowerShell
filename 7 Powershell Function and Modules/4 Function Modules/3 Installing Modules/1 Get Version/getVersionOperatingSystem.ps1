Function Get-OperatingSystemVersion
{
	(Get-WmiObject -Class Win32_OperatingSystem).Version
} #end Get-OperatingSystemVersion
