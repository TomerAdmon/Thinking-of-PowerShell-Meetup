Invoke-WebRequest -Uri 'google.com'

$result = Invoke-WebRequest -Uri 'google.com'
Get-Member -InputObject $result

$a = $result.Content | ConvertTo-Xml

Invoke-RestMethod 'http://jsonplaceholder.typicode.com/users' 

Invoke-RestMethod 'http://jsonplaceholder.typicode.com/users' | ConvertTo-Json



$data = @{id='10'; title='foodd'; body='bardd';userId=10 } # | convertTo-json

Invoke-RestMethod -Method Post 'http://jsonplaceholder.typicode.com/posts' -Body $data  | convertTo-json