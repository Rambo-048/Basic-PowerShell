function Set-DefaultParameter {
  [CmdletBinding(DefaultParameterSetName = "SetNewParameter")]
  param(
    [Parameter(ParameterSetName = "SetNewParameter")]
    $SetValue1 = "Parameter 1",
    
    [Parameter(ParameterSetName = "NotSetNewParameter")]
    $SetValue2 = "Parameter 2"
  )

  if ($PSCmdlet.ParameterSetName -eq 'SetNewParameter')
  {
    $SetValue1
  }
  else 
  {
    $SetValue2
  }
}

Set-DefaultParameter
