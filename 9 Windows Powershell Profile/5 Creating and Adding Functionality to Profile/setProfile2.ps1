Function Set-Profile {
	New-Alias -Name gh Get-Help
	New-Alias -Name gd Get-Date
	New-Alias -Name getTime Get-Uptime
	New-Alias -Name BeforeError Get-FormatData
	New-Alias -Name BeforesystemError Get-Item
	New-Alias -Name findHistory Find-DSCResource
	New-Alias -Name findPackage Find-Package
	New-Alias -Name dj Debug-Job
	New-Alias -Name ih Invoke-History
	New-Alias -Name ic Invoke-Command
	New-Alias -Name expression Invoke-Expression
	New-Alias -Name itemVoice Invoke-Item
	New-Alias -Name restMethod Invoke-RestMethod
	New-Alias -Name webReq Invoke-WebRequest
	New-Alias -Name exportData Export-FormatData

}#end function set-profile
