#Requires -version 5.0

Configuration SetFileFolder
{
	Import-DscResource –ModuleName 'PSDesiredStateConfiguration'
	
	Node @('COMPUTER1')
	{
		File LogFiles
		{
			SourcePath = "C:\folder"
			DestinationPath = "C:\scripts"
			Ensure = "present"
			Type = "Directory"
			Recurse = $true }
		
		WindowsProcess notepad
		{	
			DependsOn = "[File]LogFiles"
			Arguments = "data.txt"
			Path = "Notepad.exe"
			Ensure = "Present"
		}
	} 
}

SetFileFolder -output C:\Data
Start-DscConfiguration -Path C:\Data -Verbose -Wait -Force
