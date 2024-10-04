Param([string]$computer = $env:computername)

Function Get-AllowedComputer([string]$computer)
{
	$servers = Get-Content -path c:\Data\servers.txt
	$servers -contains $computer
} #end Get-AllowedComputer function

# *** Entry point to Script ***
if(Get-AllowedComputer -computer $computer)
{
	Get-WmiObject -class Win32_Bios -Computer $computer
}
Else
{
	"$computer is not an allowed computer"
}
