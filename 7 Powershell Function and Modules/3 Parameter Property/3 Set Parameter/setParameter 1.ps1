Function setParameter
{
	Param(
		[Parameter(Mandatory=$true)] $name,
		[Parameter(ParameterSetName="String", Mandatory=$true)] $A,
		[Parameter(ParameterSetName="String", Mandatory=$true)] $B,
		[Parameter(ParameterSetName="String", Mandatory=$true)] $C,
		[Parameter(ParameterSetName="String", Mandatory=$true)] $D,
		[Parameter(ParameterSetName="String", Mandatory=$true)] $E,
		[Parameter(ParameterSetName="String", Mandatory=$true)] $F,
		[Parameter(ParameterSetName="String", Mandatory=$true)] $G
		
	)

	Switch ($PSCmdlet.ParameterSetName)
	{
		"Data" {"$name"}
		"String" {"$A $B $C $D $E $F $G"}
	}
}

setParameter
