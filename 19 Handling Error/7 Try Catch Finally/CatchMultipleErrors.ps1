$object1 = "BadObject"
"Begin test ..."
$ErrorActionPreference = "STOP"

Try
{
	"`tAttempting to create new object $object1 ..."
	$a = new-object $object1
	"Members of the $object1"
	"New object $object1 created"
	$a | Get-Member
}
Catch [System.Management.Automation.PSArgumentException]
{
	"`tObject not found exception. `n`tCannot find the assembly for $object1"
}
Catch [system.exception]
{
	"Did not catch argument exception."
	"Caught a generic system exception instead"
}
Finally
{
	"end of script"
}
