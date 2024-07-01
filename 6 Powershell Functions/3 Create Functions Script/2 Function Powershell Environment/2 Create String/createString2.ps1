$a = "This is String"

Function Create-String([string]$a)
{
"-" * $a.length
} #end Create-String

Create-String
Create-String $a

