$a = "This Is Not Essential, But It Is Always Necessary To Do"

Function Get-dataString([string[]]$a)
{
$a | Measure-Object -Line -Word -Char
} #end Get-dataString

Get-dataString
Get-dataString $a
