Filter ABC
{
	"This is Item"
	$_ + 1
}


#ABC
#1..20 | ABC

Measure-Command { 1..20 | ABC }
