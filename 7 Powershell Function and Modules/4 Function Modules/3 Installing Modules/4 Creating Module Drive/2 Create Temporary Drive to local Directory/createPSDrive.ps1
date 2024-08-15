$Caramel = @{
    Name = "Caramel"
    PSProvider = "FileSystem"
    Root = "/home/slaber/Powershell/ModuleDrive"
    Description = "Caramel Flavour"
}
New-PSDrive @Caramel
