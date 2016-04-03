Get-Date | Select-Object -Property * | ConvertTo-Json

Get-Date | Select-Object -Property * | ConvertTo-Json | ConvertFrom-Json

Get-Content -Path C:\MeetUP\PowerShell\data.json | ConvertFrom-Json | 
Export-Clixml -Path C:\MeetUP\PowerShell\Newdata.xml

@{Account='User01';Domain='Domain01';Admin='True'} | ConvertTo-Json -Compress
@{Account='User01';Domain='Domain01';Admin='True'} | ConvertTo-Json -Depth 1 