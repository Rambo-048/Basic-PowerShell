Workflow GetComputerInfo
{
	$computers = "server1","server2"
	Foreach -Parallel ($cn in $computers)
{ Get-CimInstance -PSComputerName $cn -ClassName win32_computersystem } }
