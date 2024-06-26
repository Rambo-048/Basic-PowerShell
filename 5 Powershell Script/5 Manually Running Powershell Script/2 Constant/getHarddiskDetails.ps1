$oncom = "loopback", "localhost"

Set-Variable -Name intDriveType -Value 3 -Option constant

foreach ($Computer in $oncom)
{
	"Hard drives on: " + $Computer
	Get-WmiObject -Class win32_logicaldisk -ComputerName $Computer |
	Where {$_.drivetype -eq $intDriveType}
}