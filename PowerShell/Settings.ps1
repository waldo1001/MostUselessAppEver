$AppJSON = Get-ObjectFromJSON -Path '.\app.json'
$LaunchJSON = Get-ObjectFromJSON -Path '.\.vscode\launch.json'

$DockerImage = 'microsoft/dynamics-nav:devpreview'

$DEVServer = 'devserver'
$TESTServer = 'testserver'
$TESTDatabaseServer = "$TESTServer\SQLEXPRESS"
$DatabaseName = 'CRONUS'
#$LicenseFile = 'https://www.dropbox.com/s/ikizvkpl0pgbwf1/2017%20DEV%20License%20CRS.flf?dl=1'
$LicenseFile = "C:\Demo\license.flf"
$MemoryDEVServer = '3G'
$MemoryTESTServer = '3G'

#Credentials
$username = 'admin'
$password = 'waldo1234'
$secpasswd = ConvertTo-SecureString $password -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential ($username, $secpasswd)


$LastAppFile = (Get-ChildItem . -Filter '*.app' | 
                    Sort-Object LastWriteTime -Descending |
                        Select-Object -First 1).Fullname

$TESTmainPageId = 50100
$TESTmainPageUrl = "http://$TESTServer/nav/?tenant=default&Page=$mainPageId"

