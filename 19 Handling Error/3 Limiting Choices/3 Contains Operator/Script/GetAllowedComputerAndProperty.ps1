Param([string]$computer = $env:computername,[string]$property="name")

Function Get-AllowedComputer([string]$computer, [string]$property)
{
	$servers = Get-Content -path c:\Data\serversAndProperties.txt
	$A = $servers -contains $computer
	$B = $servers -contains $property
	Return $A -and $B
} #end Get-AllowedComputer function

# *** Entry point to Script ***
if(Get-AllowedComputer -computer $computer -property $property)
{
	Get-WmiObject -class Win32_Bios -Computer $computer |
	Select-Object -property $property
}
Else
{
	"Either $computer is not an allowed computer, `r`nor $property is not an allowed property"
}
