#$IP = Get-WmiObject -class Win32_NetworkProtocol -Filter "IPEnabled = $true"
$IP = Get-WmiObject -class Win32_NetworkProtocol -Filter "IPEnabled = $false"

# Get Network Protocol
