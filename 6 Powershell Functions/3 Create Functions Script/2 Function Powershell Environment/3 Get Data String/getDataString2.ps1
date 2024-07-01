$a = "Just make that -Bad Time- `nAs a Power to The -Good Time-"

Function Get-dataString([string[]]$a)
{
$a | Measure-Object -Line -Word -Char
} #end Get-dataString

Get-dataString
Get-dataString $a
