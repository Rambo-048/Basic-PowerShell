#Requires -version 5.0
Configuration SetEnvironment
{
	Import-DscResource –ModuleName 'PSDesiredStateConfiguration'
	Node @('C10')
	{
		File ScriptFiles
		{
			SourcePath = "\\dc1\Share\"
			DestinationPath = "C:\scripts"
			Ensure = "present"
			Type = "Directory"
			Recurse = $true
		}

		Environment Scripts
		{
			DependsOn = "[File]ScriptFiles"
			Name = "Scripts"
			Path = $True
			Ensure = "Present"
			Value = "C:\Scripts"
		}
	} 
}

SetEnvironment -output C:\ServerConfig
Start-DscConfiguration -Path C:\ServerConfig -Verbose -Wait -Force
