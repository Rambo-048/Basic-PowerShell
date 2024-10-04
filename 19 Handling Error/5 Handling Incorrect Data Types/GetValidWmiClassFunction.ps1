Param (
	[string]$computer = $env:computername,
	[Parameter(Mandatory=$true)]
	[string]$class,
	[string]$namespace = "root\cimv2"
) #end param

Function Get-ValidWmiClass([string]$computer, [string]$class, [string]$namespace)
{
	$oldErrorActionPreference = $errorActionPreference
	$errorActionPreference = "silentlyContinue"
	$Error.Clear()
	[wmiclass]"\\$computer\$($namespace):$class" | out-null
	If($error.count) { Return $false } Else { Return $true }
	$Error.Clear()
	$ErrorActionPreference = $oldErrorActionPreference
} # end Get-ValidWmiClass function

Function Get-WmiInformation ([string]$computer, [string]$class, [string]$namespace)
{
	Get-WmiObject -class $class -computername $computer -namespace $namespace|
	Format-List -property [a-z]*
} # end Get-WmiInformation function

# *** Entry point to script ***
If(Get-ValidWmiClass -computer $computer -class $class -namespace $namespace)
{
	Get-WmiInformation -computer $computer -class $class -namespace $namespace
}
Else
{
	"$class is not a valid wmi class in the $namespace namespace on $computer"
}
