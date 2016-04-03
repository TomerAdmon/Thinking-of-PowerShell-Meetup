##Get The TOP 5 processes takes the most CPU that are not published by Microsoft. show the list in Gui

Get-Process

Get-Process | Select-Object 'Name', 'CPU'

Get-Process | Where-Object {$_.company -Notlike '*Microsoft*'}

Get-Process | Where-Object {$_.company -Notlike '*Microsoft*'} | Select-Object -First 5

Get-Process | Where-Object {$_.company -Notlike '*Microsoft*'} | Sort-Object cpu -Descending | Select-Object -First 5

Get-Process | Where-Object {$_.company -Notlike '*Microsoft*'} `
| Sort-Object cpu -Descending | Select-Object -First 5 | Out-GridView -Title 'MyTitle'