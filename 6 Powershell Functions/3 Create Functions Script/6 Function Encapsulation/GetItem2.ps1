Function Get-Data($path)
{
	Get-ChildItem -Path $path -include *.doc, *.docx, *.dot, *.txt -recurse
} #end Get-Data
Filter DataSize($size)
{
	$_ | Where-Object { $_.length -ge $size }
} #end DataSize
Get-Doc("/home/slaber/folder") | DataSize 1000
