#Requires -version 5.0

Configuration ScriptFolderVersionUnzip
{
	Param ($modulePath = ($env:PSModulePath -split ';' |
	? {$_ -match 'Program Files'}),
	$Server = 'Server1')
	
	node $Server
	{
		File ScriptFiles
		{
			SourcePath = "\\computer1\Share\"
			DestinationPath = "C:\scripts"
			Ensure = "present"
			Type = "Directory"
			Recurse = $true
		}
		
		Registry AddScriptVersion
		{
			Key = "HKEY_Local_Machine\Software\ForScripting"
			ValueName = "ScriptsVersion"
			ValueData = "1.0"
			Ensure = "Present"
		}
		
		Archive ZippedModule
		{
			DependsOn = "[File]ScriptFiles"
			Path = "C:\scripts\Modules\Modules.zip"
			Destination = $modulePath
			Ensure = "Present"
		}
	}
}

ScriptFolderVersionUnZip -output C:\server1Config
Start-DscConfiguration -Path C:\server1Config -JobName Server1Config –Verbose
