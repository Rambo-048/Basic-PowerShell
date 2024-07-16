Function mandatory-parameter
{
	Param(
		[Parameter(mandatory=$true)]
		$name
	)
	"Hello $name"
}

mandatory-parameter
