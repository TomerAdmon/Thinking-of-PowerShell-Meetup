Connect-VIServer -server 'Vcenter-Name' -user 'user' -Password "password" | Out-Null

$OriginalDatastoreInfo = Get-Datastore -name "datastore Name"

$vms = get-vm $VMNamePattern* -Datastore $OriginalDatastoreInfo.Name  | Where-Object -FilterScript {
    $_.PowerState -eq 'PoweredOff'
}  

Move-VM -vm $vms -Datastore $DestenationDatastoreInfo.Name