Function Value-Pipeline
{
	Param(
		[Parameter(ValueFromPipelineByPropertyName=$true)] $value1,
		[Parameter(ValueFromPipelineByPropertyName=$true)] $value2
	)
	
	Process {Write-Host $value1 $value2}
}

Value-Pipeline A B
