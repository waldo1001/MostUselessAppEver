. '.\PowerShell\Settings.ps1'

New-NavContainer `
    -accept_eula `
    -containerName $DEVServer `
    -imageName $DockerImage `
    -licenseFile $LicenseFile `
    -memoryLimit $MemoryDEVServer `
    -updateHosts `
    -auth NavUserPassword `
    -includeCSide `
    -Verbose `
    -Credential $Credential 

New-NavContainer `
    -accept_eula `
    -containerName $TESTServer `
    -imageName $DockerImage `
    -licenseFile $LicenseFile `
    -memoryLimit $MemoryTESTServer `
    -updateHosts `
    -auth NavUserPassword `
    -includeCSide `
    -Verbose `
    -Credential $Credential 

Start-Process "http://$($DEVServer):8080/"
