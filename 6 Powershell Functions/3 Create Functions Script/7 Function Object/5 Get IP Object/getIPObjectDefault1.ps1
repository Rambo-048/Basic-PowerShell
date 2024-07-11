Function Get-IPNetwork([bool]$IPEnabled = $true)
{
	Get-WmiObject -class Win32_NetworkAdapterConfiguration -Filter "IPEnabled = $IPEnabled"
} #end Get-IPNetwork

Get-IPNetwork -IPEnabled $False
