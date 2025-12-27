Function Add-Item
{
	Process {
		"KETIMUN"
		$_ + 1
	}
} #end Add-Item

1..20 | Add-Item

Measure-Command {1..20 | Add-Item}
