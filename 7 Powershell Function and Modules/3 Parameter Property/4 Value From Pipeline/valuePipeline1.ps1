Function Value-Pipeline
{
	Param(
		[Parameter(ValueFromPipeline=$true)] $process
	)
	
	Process {Write-Host $process.name $process.id}
}

Value-Pipeline
