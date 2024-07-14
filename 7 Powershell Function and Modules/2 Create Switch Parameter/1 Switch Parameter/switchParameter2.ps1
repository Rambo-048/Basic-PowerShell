Function Create-SwitchParameter
{
	[cmdletbinding(SupportsShouldProcess=$True)]
	Param($path)
	md $path
	#mkdir $path
}

Create-SwitchParameter -path /home/slaber/folder/newDirectory -confirm
