Function Get-IPNetwork
{
	Get-WmiObject -class Win32_NetworkAdapterConfiguration -Filter "IPEnabled = $true"
} #end Get-IPNetwork

Function Format-IPOutput($IP)
{
	"IP Address : " + $IP.IPAddress[0]
	"Subnet     : " + $IP.IPSubNet[0]
	"GateWay    : " + $IP.DefaultIPGateway
	"DNS Server : " + $IP.DNSServerSearchOrder[0]
	"FQDN       : " + $IP.DNSHostName + "." + $IP.DNSDomain
} #end Format-IPOutput

# *** Entry Point To Script
$ip = Get-IPNetwork
Format-IPOutput -ip $ip
