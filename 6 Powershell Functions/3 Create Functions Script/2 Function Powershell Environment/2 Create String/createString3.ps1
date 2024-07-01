$a = "This is String"

Function Create-String([string]$a)
{
"-" * $a.length
} #end Create-String


# *** Entry Point To Script

"This is String" | ForEach-Object {$_ ; Create-String $_}
