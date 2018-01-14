<#
Enter-PSSession -Authentication Basic -Credential Administrator -ComputerName WaldoCoreVM 
enter-pssession waldocorevm
#>

. '.\PowerShell\Settings.ps1'

Invoke-Command -ComputerName $DockerHost -ScriptBlock {
    param(
        $DEVServer,$IPDEVServer,$DockerImage,$LicenseFile,$MemoryDEVServer,[System.Management.Automation.PSCredential] $Credential
    )

    New-NavContainer `
        -accept_eula `
        -containerName $DEVServer `
        -imageName $DockerImage `
        -licenseFile $LicenseFile `
        -alwaysPull `
        -doNotExportObjectsToText `
        -additionalParameters @("--network=tlan","--ip $IPDEVServer") `
        -memoryLimit $MemoryDEVServer `
        -updateHosts `
        -auth NavUserPassword `
        -includeCSide `
        -Verbose `
        -Credential $Credential 
} -ArgumentList $DEVServer,$IPDEVServer,$DockerImage,$LicenseFile,$MemoryDEVServer,$Credential


Invoke-Command -ComputerName $DockerHost -ScriptBlock {
    param(
        $TESTServer,$IPTESTServer,$DockerImage,$LicenseFile,$MemoryTESTServer,[System.Management.Automation.PSCredential] $Credential
    )

    New-NavContainer `
    -accept_eula `
    -containerName $TESTServer `
    -imageName $DockerImage `
    -licenseFile $LicenseFile `
    -alwaysPull `
    -doNotExportObjectsToText `
    -additionalParameters @("--network=tlan","--ip $IPTESTServer") `
    -memoryLimit $MemoryTESTServer `
    -updateHosts `
    -auth NavUserPassword `
    -includeCSide `
    -Verbose `
    -Credential $Credential 
} -ArgumentList $TESTServer,$IPTESTServer,$DockerImage,$LicenseFile,$MemoryTESTServer,$Credential

Start-Process "http://$($DEVServer):8080/"
