$caramel = Get-Credential -Credential Caramel\DataAccount
New-PSDrive -Name "A" -Root "/home/slaber/Powershell/ModuleDrive" -PSProvider "FileSystem" -Credential $caramel
