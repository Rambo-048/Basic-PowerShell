# Create New Forest, add Domain Controller
$domainname = "users.msft"
$netbiosName = "USERS"

	Import-Module ADDSDeployment
	Install-ADDSForest -CreateDnsDelegation:$false `
		-DatabasePath "C:\Windows\NTDS" `
		-DomainMode "Win2000" `
		-DomainName $domainname `
		-DomainNetbiosName $netbiosName `
		-ForestMode "Win2000" `
		-InstallDns:$true `
		-LogPath "C:\Windows\NTDS" `
		-NoRebootOnCompletion:$false `
		-SysvolPath "C:\Windows\SYSVOL" `
		-Force:$true
