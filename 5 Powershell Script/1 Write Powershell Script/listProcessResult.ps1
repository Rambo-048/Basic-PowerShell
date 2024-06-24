$oncom = "localhost","loopback","127.0.0.1"

foreach ($i in $oncom)
{$strFile = "c:\folder\myfolder"+ $i +"OncomScript.txt"
Write-Host "Test Script" $i "please wait ...";
Get-WmiObject -computername $i -class win32_process |
Select-Object name, processID, Priority, ThreadCount, PageFaults, PageFileUsage |
Where-Object {!$_.processID -eq 0} | Sort-Object -property name |
Format-Table | Out-File $strFile}