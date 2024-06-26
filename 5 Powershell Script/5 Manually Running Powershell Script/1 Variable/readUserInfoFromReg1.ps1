$userPath = "\Software\Microsoft\Windows\CurrentVersion\" + "Explorer"
$userName = "Logon User Name"
$Path = "\Volatile Environment"
$Name = "LOGONSERVER","HOMEPATH", "APPDATA","HOMEDRIVE"

Set-Location HKCU:\
	Get-ItemProperty -Path $userPath -Name $userName | Format-List $userName
foreach ($i in $Name)
{
Get-ItemProperty -Path $Path -Name $i | Format-List $i
}