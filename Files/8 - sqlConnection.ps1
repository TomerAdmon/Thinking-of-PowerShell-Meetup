function executeQueryPowerShell2()
{ 
    $SQLQuery= $('select [Os],count([TestName]),[Result]	
    FROM [TeamCity].[dbo].[MultiPlatformCommands]
    where CONVERT(DATE, [ResultTime]) = CONVERT(DATE, CURRENT_TIMESTAMP)
    group by [Result], [OS]
    order by [Result]
    ')

    $Connection = New-Object System.Data.SQLClient.SQLConnection
    $Connection.ConnectionString = 'Server=server;Database=TeamCity;User Id=user;Password=pass'
    $Connection.Open()
    $Command = New-Object System.Data.SQLClient.SQLCommand
    $Command.Connection = $Connection
    $Command.CommandText = $SQLQuery
    $Reader = $Command.ExecuteReader()
}

function executeQueryPowerShell3()
{
    Invoke-Sqlcmd -Query 'SELECT GETDATE() AS TimeOfQuery;' -ServerInstance 'MyComputer\MyInstance'
}