$Query = "Select Name from Win32_Share"
Get-CimInstance -Query $Query | Sort-Object name | Select-Object name
