Function Value-Pipeline
{
	Param(
		$name,
		[Parameter(ValueFromRemainingArguments=$true)] $information
	)
	
	Process { "Name: $name `r`n info: $information" }
}

Value-Pipeline Sauce 123 Tomato 123
Value-Pipeline Sauce 123 Sambal 123
