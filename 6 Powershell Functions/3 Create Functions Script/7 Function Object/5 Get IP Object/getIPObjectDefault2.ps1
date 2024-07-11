# FORMAT-NON_IP_OUTPUT

Function Get-IPNetwork([bool]$IPEnabled = $true)
{
	Get-WmiObject -class Win32_NetworkAdapterConfiguration -Filter "IPEnabled = $IPEnabled"
} #end Get-IPNetwork

Function Format-NonIPNetwork($IP)
{
	Begin { "Index # Description" }
	Process {
		ForEach ($i in $ip)
		{
			Write-Host $i.Index `t $i.Description
		} #end ForEach
	} #end Process
} #end Format-NonIPOutPut

$ip = Get-IPNetwork -IPEnabled $False
Format-NonIPOutput($ip)


