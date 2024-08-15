$caramel = Get-Credential -Credential Caramel\DataAccount
New-PSDrive -Name "B" -Root "/home/slaber/Powershell" -PSProvider "FileSystem" -Credential $caramel
