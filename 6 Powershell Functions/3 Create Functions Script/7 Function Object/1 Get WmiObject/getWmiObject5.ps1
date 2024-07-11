#$IP = Get-WmiObject -class Win32_NetworkClient -Filter "IPEnabled = $true"
$IP = Get-WmiObject -class Win32_NetworkClient -Filter "IPEnabled = $false"

# Get Network Connection
