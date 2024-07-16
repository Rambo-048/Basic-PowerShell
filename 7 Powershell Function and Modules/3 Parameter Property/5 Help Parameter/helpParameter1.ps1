Function Help-Parameter
{
	Param(
		[Parameter(Mandatory=$true, HelpMessage="Insert Message")] $message
	)
	
	"Hello $message"
}

Help-Parameter
