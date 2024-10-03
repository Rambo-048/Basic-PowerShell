$credential = Get-Credential
$cn = Read-Host -Prompt "enter a computer name"
Get-WmiObject win32_bios -cn $cn -Credential $credential
