Function Get-EnabledBreakpoints
{
	Get-PSBreakpoint |
	Format-Table -Property id, script, command, variable, enabled -AutoSize
}

# *** Entry Point to Script ***
Get-EnabledBreakpoints
