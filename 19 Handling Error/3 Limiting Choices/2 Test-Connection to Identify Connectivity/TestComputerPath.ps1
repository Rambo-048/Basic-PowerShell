Param([string]$computer = $env:COMPUTERNAME)
if(Test-Connection -computer $computer -BufferSize 16 -Count 1 -Quiet)
{ Get-WmiObject -class Win32_Bios -computer $computer }
Else
{ "Unable to reach $computer computer"}
