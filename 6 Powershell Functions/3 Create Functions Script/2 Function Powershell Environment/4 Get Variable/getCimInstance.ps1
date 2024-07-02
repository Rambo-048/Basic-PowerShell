Get-CimInstance win32_bios -ComputerName PC1, PC2, PC3, PC4 | ForEach-Object { $_.PSComputerName
; New-Line $_.PSComputerName ; $_}
