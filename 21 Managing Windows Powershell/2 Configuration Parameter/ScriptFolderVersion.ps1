#Requires -Version 5.0
Configuration ScriptFolderVersion
{
	Param ($server = 'server1')
	node $server
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
}

ScriptFolderVersion
