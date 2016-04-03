
Get-Content C:\MeetUP\PowerShell\xml.xml | ConvertTo-Csv 

[xml]$xml = Get-Content 'C:\MeetUP\PowerShell\xml.xml'
$xml.computers.ChildNodes | Export-Csv -Path C:\MeetUP\PowerShell\data.csv

Import-Csv -Path 'C:\MeetUP\PowerShell\Import.txt'
Import-Csv -Path 'C:\MeetUP\PowerShell\Import.txt' | Where-Object {$_.department -eq 'Finance'}