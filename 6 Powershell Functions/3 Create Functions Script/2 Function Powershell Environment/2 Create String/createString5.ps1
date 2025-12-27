$a = "Sometimes Feeling Doubts Keep You From Moving"

Function Create-String([string]$a)
{
"-" * $a.length
} #end Create-String

Create-String
Create-String $a
