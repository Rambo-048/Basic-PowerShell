Workflow HelloUserTime
{
	$dateHour = Get-date -UFormat '%H'
	if($dateHour -lt 12) {"good morning"}
	ELSeIF ($dateHour -ge 12 -AND $dateHour -le 18) {"good afternoon"}
	ELSE {"good evening"}
}
