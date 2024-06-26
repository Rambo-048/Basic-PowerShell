$apps = "notepad","calc"
Get-Process -Name $apps -ErrorAction SilentlyContinue |
Stop-Process -PassThru |
ForEach-Object { $_.name + ' with process ID: ' + $_.ID + ' was stopped.'}