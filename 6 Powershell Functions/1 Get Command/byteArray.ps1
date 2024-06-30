$byteA = Get-Content -Path C:\temp\test.txt -AsByteStream -Raw
Get-Member -InputObject $byteA
