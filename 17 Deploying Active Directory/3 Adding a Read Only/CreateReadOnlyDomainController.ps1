Import-Module ADDSDeployment
Install-ADDSDomainController `
	-AllowPasswordReplicationAccountName @("USERS\Allowed RODC Password Replication Group") `
	-NoGlobalCatalog:$false `
	-Credential (Get-Credential -Credential users\administrator) `
	-CriticalReplicationOnly:$false `
	-DatabasePath "C:\Windows\NTDS" `
	-DenyPasswordReplicationAccountName @("BUILTIN\Administrators",
		"BUILTIN\Server Operators", "BUILTIN\Backup Operators",
		"BUILTIN\Account Operators",
		"USERS\Denied RODC Password Replication Group") `
	-DomainName "users.msft" `
	-InstallDns:$false `
	-LogPath "C:\Windows\NTDS" `
	-NoRebootOnCompletion:$false `
	-ReadOnlyReplica:$true `
	-SiteName "Default-First-Site-Name" `
	-SysvolPath "C:\Windows\SYSVOL" `
	-Force:$true
