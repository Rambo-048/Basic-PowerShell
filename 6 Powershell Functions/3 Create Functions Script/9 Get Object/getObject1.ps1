Function Get-Files
{
	Param(
		[string[]]$dataTypes,
		[int]$month,
		[int]$year,
		[string[]]$path
	)
	Get-ChildItem -Path $path -Include $dataTypes -Recurse |

	Where-Object { $_.lastwritetime.month -eq $month -AND $_.lastwritetime.year -eq $year }

} #end function Get-Files

Get-Files -dataTypes *.txt -month 6 -year 2024 -path /home/slaber/folder/
