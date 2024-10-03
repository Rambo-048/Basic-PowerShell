Import-Module -Name ActiveDirectory
$Name = "ThisIsScript"
$DomainName = "computer=users,computer=com"
$Path = "OrganizationalUnit={0},{1}" -f $Name, $DomainName

New-ADOrganizationalUnit -Name $Name -Path $DomainName -ProtectedFromAccidentalDeletion $false

For($data = 0; $data -le 5; $data++)
{
New-ADOrganizationalUnit -Name $Name$data -Path $Path -ProtectedFromAccidentalDeletion $false
}

For($data = 0 ; $data -le 5; $data++)
{
New-ADComputer -Name "Computer$data" -Path $Path
New-ADUser -Name "UserName$data" -Path $Path
}
