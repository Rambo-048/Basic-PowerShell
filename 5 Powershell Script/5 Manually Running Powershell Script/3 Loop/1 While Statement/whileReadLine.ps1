$i = 0

$fileContents = Get-Content -path C:\folder\newfolder\file.txt

While ( $i -le $fileContents.length )
{
    $fileContents[$i]
    $i++
}