## Cmdlets
Get-Process 

## Cmdlets help
Get-Help Get-Process

## Cmdlets examples
Get-Help Get-ADObject -Examples

## Cmdlets online help
Get-Help Get-Process -Online

## Get All members on object
get-member -InputObject (Get-Process -Name chrome)[0]

write-host ((Get-Process -Name chrome)[0]).Path