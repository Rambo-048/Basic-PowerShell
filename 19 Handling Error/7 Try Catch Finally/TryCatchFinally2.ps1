$object1 = "Bad.Object"
"Begin test"

Try
{
	"`tAttempting To Create a New Object $object1"
	$a = new-object $object1
	"Members of the $object1"
	"New object $object1 created"
	$a | Get-Member
}
Catch [system.exception]
{
	"`tcaught a system exception"
}
Finally
{
	"end of script"
}
