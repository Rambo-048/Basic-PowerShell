$A = Get-Content -Path /home/slaber/folder/Data.txt -Raw
$B = Get-Content -Path /home/slaber/folder/Data.txt

Write-Host "A Contains $($A.Count)"
Write-Host "B Contains $($B.Count)"
