#Requires -version 5.0
Configuration ScriptFolder
{
	node 'COMPUTER1'
	{
		File ScriptFiles
		{
			SourcePath = "\\dc1\Share\"
			DestinationPath = "C:\scripts"
			Ensure = "Present"
			Type = "Directory"
			Recurse = $true
		}
	}
}
