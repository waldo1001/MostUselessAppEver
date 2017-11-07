. '.\PowerShell\Settings.ps1'

New-NavContainer `
    -accept_eula `
    -containerName $DEVServer `
    -imageName $DockerImage `
    -licenseFile $LicenseFile `
    -vmAdminUsername admin `
    -adminPassword (convertTo-SecureString -String $password -AsPlainText -Force) `
    -memoryLimit $MemoryDEVServer `
    -updateHosts `
    -auth NavUserPassword `
    -includeCSide `
    -Verbose 

New-NavContainer `
    -accept_eula `
    -containerName $TESTServer `
    -imageName $DockerImage `
    -licenseFile $LicenseFile `
    -vmAdminUsername admin `
    -adminPassword (convertTo-SecureString -String $password -AsPlainText -Force) `
    -memoryLimit $MemoryTESTServer `
    -updateHosts `
    -auth NavUserPassword `
    -includeCSide `
    -Verbose 