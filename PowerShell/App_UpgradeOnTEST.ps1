<#
Enter-PSSession -Authentication Basic -Credential Administrator -ComputerName WaldoCoreVM 
enter-pssession waldocorevm
#>

. '.\PowerShell\Settings.ps1'

UnInstall-NavContainerApp `
    -containerName $TESTServer `
    -appName $AppJSON.name `
    -Verbose `
    -ErrorAction SilentlyContinue

UnPublish-NavContainerApp `
    -containerName $TESTServer `
    -appName $AppJSON.name `
    -Verbose `
    -ErrorAction SilentlyContinue

Publish-NavContainerApp `
    -containerName $TESTServer `
    -appFile $LastAppFile `
    -skipVerification `
    -Verbose `
    -ErrorAction Stop

Sync-NavContainerApp `
    -containerName $TESTServer `
    -appName $AppJSON.name `
    -ErrorAction Stop 
    
Start-NavContainerAppDataUpgrade `
    -containerName $TESTServer `
    -appName $AppJSON.name 

#Run Page
start $TESTmainPageUrl
