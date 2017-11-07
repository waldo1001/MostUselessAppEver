. '.\PowerShell\Settings.ps1'

#Run Page
start $TESTmainPageUrl

#Check Data
Invoke-Sqlcmd `
    -ServerInstance $TESTDatabaseServer `
    -Database $DatabaseName `
    -Username sa `
    -Password $password `
    -Query 'SELECT TOP 10 * FROM [CRONUS International Ltd_$Just Some Table]'     