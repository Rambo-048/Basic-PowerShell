$a = "This is String"

Function Get-dataString([string[]]$a)
{
$a | Measure-Object -Line -Word -Char
} #end Get-dataString

Get-dataString
Get-dataString $a
