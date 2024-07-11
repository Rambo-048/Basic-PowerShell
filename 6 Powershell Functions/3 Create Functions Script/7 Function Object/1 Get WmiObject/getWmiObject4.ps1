#$IP = Get-WmiObject -class Win32_NetworkConnection -Filter "IPEnabled = $true"
$IP = Get-WmiObject -class Win32_NetworkConnection -Filter "IPEnabled = $false"

# Get Network Connection
