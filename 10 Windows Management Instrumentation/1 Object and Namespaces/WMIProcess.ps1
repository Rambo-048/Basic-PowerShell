Function Get-WmiNameSpace
{
	Param(
		$nameSpace = "A",
		$computer = "B"
	)
	Get-WmiObject -class __NAMESPACE -computer $computer '
	-namespace $namespace -ErrorAction "SilentlyContinue" |
	
	Foreach-Object '
	-Process '
	{
		$subns = Join-Path -Path $_.__NAMESPACE -ChildPath $_.name
		if($subns -notmatch 'directory') {$subns}
		$namespaces += $subns + "'r'n"
		Get-WmiNameSpace -namespace $subNS -computer $computer
	}
} #end Get-WmiNameSpace
