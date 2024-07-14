function Create-NewData {
  [CmdletBInding(ConfirmImpact = 'High', SupportsShouldProcess=$True)]
  param()

  if ($PSCmdlet.ShouldProcess("Data System"))
  {
     Write-Host "Create New Data!"
  }
}

Create-NewData
