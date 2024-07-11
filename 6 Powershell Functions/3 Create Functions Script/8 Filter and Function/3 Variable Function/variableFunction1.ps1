Function Add-Item
{
	Process {
		"This is Item"
		$_ + 1
	}
} #end Add-Item

1..20 | Add-Item
