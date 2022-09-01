get-process | where company -notlike *microsoft* | ft name, company, ID, processname -autosize

Get-Command -Name G* -CommandType Cmdlet

Test-Path C:\Users\hp\Desktop\NewFolder

Test-NetConnection -ComputerName DESKTOP-CJ -Port 443 -InformationLevel Quiet

Get-ChildItem -Force -Recurse -File | Where Length -gt 100MB | Sort Length -Descending | Select fullname, CreationTime, @{n='Size (MB)'; e={[math]::Round($_.Length / 1MB , 2)}}

Get-Service | Where-Object {$_.Status -eq "Running"}

Get-Service *spool*

Get-Service -ComputerName Computer1

Get-EventLog -LogName System -Newest 10

Get-WmiObject -Class Win32_OperatingSystem

	Win32_PhysicalMemory – information about available memory
	Win32_Processor – Processor information
	Win32_LogicalDisk – Logical disk drive information
	Win32_DiskDrive – Physical disk information
	Win32_OperatingSystem – Information about the operating system
	Win32_BaseBoard - Get information about motherboard

Enter-PSSession Computer1

Invoke-Command -ComputerName Computer1, Computer2, Computer3, -ScriptBlock {Get-Process}

Get-VM -ComputerName Computer1



$session = New-PSSession -ComputerName Computer1, Computer2
Invoke-Command -Session $session {$Processes = Get-Process}
