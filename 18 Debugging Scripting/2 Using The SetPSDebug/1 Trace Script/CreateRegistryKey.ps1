Function Add-RegistryValue
{
	Param ($key,$value)
	$scriptRoot = "HKCU:\software\ForScripting"

if(-not (Test-Path -path $scriptRoot))
{
	New-Item -Path HKCU:\Software\ForScripting | Out-Null
	New-ItemProperty -Path $scriptRoot -Name $key -Value $value `
	-PropertyType String | Out-Null
}
Else
{
	Set-ItemProperty -Path $scriptRoot -Name $key -Value $value | `
	Out-Null
}

} #end function Add-RegistryValue

# *** Entry Point to Script ***
Add-RegistryValue -key forscripting -value test
