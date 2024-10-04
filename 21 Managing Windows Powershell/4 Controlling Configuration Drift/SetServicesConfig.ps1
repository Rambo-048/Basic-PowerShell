Configuration SetServices
{
	node @('COMPUTER1')
	{
	
	Service Bits
	{
		Name = "Bits"
		StartUpType = "Automatic"
		State = "Running"
		BuiltinAccount = 'LocalSystem'
	}

	Service Browser
	{
		Name = "Browser"
		StartUpType = "Disabled"
		State = "Stopped"
		BuiltinAccount = 'LocalSystem'
	}

	Service DHCP
	{
		Name = "DHCP"
		StartUpType = "Automatic"
		State = "Running"
		BuiltinAccount = 'LocalService'
	}
	}
}

SetServices -OutputPath C:\ServerConfig
Start-DscConfiguration -Path C:\ServerConfig
