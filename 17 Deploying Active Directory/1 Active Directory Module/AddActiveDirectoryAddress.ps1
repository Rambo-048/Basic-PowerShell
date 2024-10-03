# Set Static IP Address
$ipaddress = "192.168.10.123"
$ipsubnet = "24"
$ipgateway = "192.168.10.1"
$ipdns = "192.168.10.123"
$ipifStatement = (Get-NetAdapter).ifIndex New-NetIPAddress -IPAddress $ipaddress -PrefixLength $ipsubnet`
-InterfaceIndex $ipifStatement -DefaultGateway $ipgateway

# rename the computer
$newname = "Computer1"
Rename-Computer -NewName $newname -force

# install features
$featureLogPath = "c:\log\featurelog.txt"
New-Item $featureLogPath -ItemType file -Force
$addsTools = "RSAT-AD-Tools"

Add-WindowsFeature $addsTools
Get-WindowsFeature | Where installed >>$featureLogPath

# restart the computer
Restart-Computer
