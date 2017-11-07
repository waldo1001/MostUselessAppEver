$AppJSON = Get-ObjectFromJSON -Path '.\app.json'
$LaunchJSON = Get-ObjectFromJSON -Path '.\.vscode\launch.json'

$DockerImage = 'microsoft/dynamics-nav:devpreview'

$password = 'waldo1234'
$DEVServer = 'devserver'
$TESTServer = 'testserver'
$TESTDatabaseServer = "$TESTServer\SQLEXPRESS"
$DatabaseName = 'CRONUS'
$LicenseFile = 'https://www.dropbox.com/s/ikizvkpl0pgbwf1/2017%20DEV%20License%20CRS.flf?dl=1'
$MemoryDEVServer = '3G'
$MemoryTESTServer = '3G'

$LastAppFile = (Get-ChildItem . -Filter '*.app' | 
                    Sort-Object LastWriteTime -Descending |
                        Select-Object -First 1).Fullname

$TESTmainPageId = 50100
$TESTmainPageUrl = "http://$TESTServer/nav/?tenant=default&Page=$mainPageId"