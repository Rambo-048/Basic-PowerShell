Function setParameter
{
	Param(
		[Parameter(Mandatory=$true)] $name,
		[Parameter(ParameterSetName="String", Mandatory=$true)] $A,
		[Parameter(ParameterSetName="String")] $B,
		[Parameter(ParameterSetName="String", Mandatory=$true)] $C,
		[Parameter(ParameterSetName="String")] $D,
		[Parameter(ParameterSetName="String", Mandatory=$true)] $E,
		[Parameter(ParameterSetName="String")] $F,
		[Parameter(ParameterSetName="String", Mandatory=$true)] $G
		
	)

	Switch ($PSCmdlet.ParameterSetName)
	{
		"Data" {"$name"}
		"String" {"$A $B $C $D $E $F $G"}
	}
}

setParameter
