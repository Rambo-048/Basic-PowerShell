Function Get-Choice
{
	$string1 = "Please Select The Computer to query"
	$string2 = "Select Computer to query"
	
	$choices = [System.Management.Automation.Host.ChoiceDescription[]] `
	@("&loopback", "&localhost", "&127.0.0.1")
	
	[int]$defaultChoice = 0
	$choiceSystem = $host.ui.PromptForChoice($string1,$string2,$choices,$defaultChoice)

	switch($choiceSystem)
	{
		0 { "loopback" }
		1 { "localhost" }
		2 { "127.0.0.1" }
	}

} #end Get-Choice function
Get-WmiObject -class win32_bios -computername (Get-Choice)
