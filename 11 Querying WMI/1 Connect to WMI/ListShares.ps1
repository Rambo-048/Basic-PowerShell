$Query = "Select * from Win32_Share"
Get-CimInstance -query $Query
