workflow get-winfeatures
{
Parallel {
		InlineScript {Get-WindowsFeature -Name PowerShell*}
		Sequence {
			InlineScript {$env:COMPUTERNAME}
			$PSVersionTable.PSVersion 
		} 
	}
}
