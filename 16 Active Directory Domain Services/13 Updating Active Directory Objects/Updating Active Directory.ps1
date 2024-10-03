Import-Module ActiveDirectory
$users = $name = $null
$users = Get-ADUser -SearchBase "OrganizationalUnit=OrganizationalUnitName,computer=users,computer=com" -filter * '
-property description
ForEach($user in $users)
{
if([string]::isNullOrEmpty($user.description))
{
"modifying $($user.name)"
Set-ADUser -Identity $user.distinguishedName -Description "added via script"
$name++
}
}
"modified $name users"
