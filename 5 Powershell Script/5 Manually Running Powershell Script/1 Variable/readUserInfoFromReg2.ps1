$userPath = "\Software\Microsoft\Windows\CurrentVersion\" + "Explorer"
$path = "\Volatile Environment"
$name = "LOGONSERVER","HOMEPATH", "APPDATA","HOMEDRIVE"

Set-Location HKCU:\
	
foreach ($i in $name)
{
Get-ItemProperty -Path $path -Name $i | Format-List $i
}