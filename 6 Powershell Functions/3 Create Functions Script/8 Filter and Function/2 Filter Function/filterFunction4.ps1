Filter getMessage
{
	$_ | Where-Object { $_.message }
} #end getMessage

# Get-WinEvent -LogName Application | getMessage | Measure-Object
getMessage | Measure-Object
