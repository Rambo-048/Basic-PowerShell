#set static IP address
$ipaddress = "192.168.10.125"
$ipsubnet = "24"
$ipgateway = "192.168.10.1"
$ipdns = "192.168.10.125"
$ipifStatement = (Get-NetAdapter).ifIndex
New-NetIPAddress -IPAddress $ipaddress -PrefixLength $ipsubnet -InterfaceIndex $ipifStament -DefaultGateway $ipgateway
Set-DnsClientServerAddress -InterfaceIndex $ipifStatement -ServerAddresses $ipdns

#rename the computer
$newname = "computer12345"
Rename-Computer -NewName $newname -force

#install roles and features
$featureLogPath = "c:\log\featurelog.txt"
New-Item $featureLogPath -ItemType file -Force
Add-WindowsFeature -Name "ad-domain-services" -IncludeAllSubFeature -IncludeManagementTools
Get-WindowsFeature | Where installed >>$featureLogPath

#restart the computer
Restart-Computer
