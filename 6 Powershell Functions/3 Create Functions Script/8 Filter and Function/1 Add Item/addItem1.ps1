Function Add-Item
{
	"This is Item"
	
	While ($input.moveNext())
	{
		$input.current + 0
	}
}

#Add-Item

1..20 | Add-Item

#Measure-Command { 1..20 | Add-Item }
