$IP = Get-WmiObject -class Win32_NetworkAdapterConfiguration -Filter "IPEnabled = $false"
"IP Address : " + $IP.IPAddress[0]
"Subnet     : " + $IP.IPSubNet[0]
"GateWay    : " + $IP.DefaultIPGateway
"DNS Server : " + $IP.DNSServerSearchOrder[0]
"FQDN       : “ + $IP.DNSHostName + "." + $IP.DNSDomain


# OUTPUT
# IP Address : 10.21.123.5
# Subnet     : 255.255.255.0
# GateWay    : 10.21.123.1
# DNS Server : 169.254.41.1
# FQDN       : vitamin.sariawan.com
