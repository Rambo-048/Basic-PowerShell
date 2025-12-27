$a = "It Is Better To Do Something Late Than Not At All"

Function Create-String([string]$a)
{
"-" * $a.length
} #end Create-String


# *** Entry Point To Script

"This is String" | ForEach-Object {$_ ; Create-String $_}
