Param(
	[Parameter(Mandatory=$true)]
	$object
)

"Beginning test ..."

Try
{
	"`tAttempting to create object $object"
	New-Object $object
}
Catch [system.exception]
{ "`tUnable to create $object" }
Finally
{ "Reached the end of the Script" }
