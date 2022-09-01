Get-EventLog -LogName system -newest 10 | ConvertTo-Html -Property Index,Time,EntryType,Source,InstanceID,Message > c:\eventlogoutput.html
