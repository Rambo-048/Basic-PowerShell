WorkFlow Get-EventLogData
{
Parallel
{
	Get-EventLog -LogName application -Newest 1
	Get-EventLog -LogName system -Newest 1
	Get-EventLog -LogName 'Windows PowerShell' -Newest 1 } 
}
