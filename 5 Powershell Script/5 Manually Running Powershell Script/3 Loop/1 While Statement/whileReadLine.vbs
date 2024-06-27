Set objectFile = CreateObject("Scripting.FileSystemObject")
Set file = objectFile.OpenTextFile("C:\folder\newfolder\file.txt")
While Not file.AtEndOfStream
	WScript.Echo file.ReadLine
Wend