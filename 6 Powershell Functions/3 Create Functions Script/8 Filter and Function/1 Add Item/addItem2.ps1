Function Add-Item
{
	"This is Item"
	
	While ($input.moveNext())
	{
		$input.current + 0
	}
}

#Add-Item

40..20 | Add-Item

#Measure-Command { 1..20 | Add-Item }
