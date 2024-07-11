# FORMAT-IP_OUTPUT

Function Get-IPNetwork([bool]$IPEnabled = $true)
{
	Get-WmiObject -class Win32_NetworkAdapterConfiguration -Filter "IPEnabled = $IPEnabled"
} #end Get-IPNetwork

Function Format-IPOutput($IP)
{
	"IP Address : " + $IP.IPAddress[0]
	"Subnet     : " + $IP.IPSubNet[0]
	"GateWay    : " + $IP.DefaultIPGateway
	"DNS Server : " + $IP.DNSServerSearchOrder[0]
	"FQDN       : " + $IP.DNSHostName + "." + $IP.DNSDomain
} #end Format-IPNetwork

Function Format-NonIPOutput($IP) {
	Begin { "Index # Description" }
	Process {
		ForEach ($i in $ip) {
			Write-Host $i.Index `t $i.Description
		} #end ForEach
	} #end Process
} #end Format-NonIPOutPut

# *** Entry Point ***
$IPEnabled = $false
$ip = Get-IPNetwork -IPEnabled $IPEnabled
If($IPEnabled) { Format-IPOutput($ip) }
ELSE { Format-NonIPOutput($ip) }



