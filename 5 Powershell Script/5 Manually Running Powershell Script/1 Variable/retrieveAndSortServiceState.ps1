$oncom = "localhost","loopback"

foreach ($i in $oncom)
{
Write-Host "Test" $i "....."
Get-WmiObject -computer $oncom -class win32_service |
Select-Object -property name, state, startmode, startname |
Sort-Object -property startmode, state, name |
Format-Table *
}