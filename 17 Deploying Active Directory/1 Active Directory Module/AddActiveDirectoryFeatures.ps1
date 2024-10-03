#Install Active Directory Domain Service, DNS and Group Policy Management Feature
$featureLogPath = "c:\log\featurelog.txt"
start-job -Name addFeature -ScriptBlock {
	Add-WindowsFeature -Name "ad-domain-services" -IncludeAllSubFeature -IncludeManagementTools
	Add-WindowsFeature -Name "dns" -IncludeAllSubFeature -IncludeManagementTools
	Add-WindowsFeature -Name "GroupPolicyManagementFeature" -IncludeAllSubFeature -IncludeManagementTools
}
Wait-Job -Name addFeature
Get-WindowsFeature | Where installed >> $featureLogPath
