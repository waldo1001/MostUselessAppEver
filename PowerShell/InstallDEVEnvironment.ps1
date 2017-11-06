$password = 'waldo1234'

<# New-CSideDevContainer `
    -containerName 'DEVServer' `
    -devImageName navdocker.azurecr.io/dynamics-nav:devpreview `
    -licenseFile 'https://www.dropbox.com/s/ikizvkpl0pgbwf1/2017%20DEV%20License%20CRS.flf?dl=1' `
    -vmAdminUsername admin `
    -adminPassword (convertTo-SecureString -String $password -AsPlainText -Force) `
    -memoryLimit 2G `
    -updateHosts `
    -auth NavUserPassword `
    -accept_eula `
    -additionalParameters @('--publish 1433:1433') `
    -Verbose  #>


New-NavContainer `
    -accept_eula `
    -containerName 'DEVServer' `
    -imageName navdocker.azurecr.io/dynamics-nav:devpreview `
    -licenseFile 'https://www.dropbox.com/s/ikizvkpl0pgbwf1/2017%20DEV%20License%20CRS.flf?dl=1' `
    -vmAdminUsername admin `
    -adminPassword (convertTo-SecureString -String $password -AsPlainText -Force) `
    -memoryLimit 2G `
    -updateHosts `
    -auth NavUserPassword `
    -includeCSide `
    -Verbose `
    #-additionalParameters @('--publish 1433:1433')

<# New-CSideDevContainer `
    -containerName 'TESTServer' `
    -devImageName navdocker.azurecr.io/dynamics-nav:devpreview `
    -licenseFile 'https://www.dropbox.com/s/ikizvkpl0pgbwf1/2017%20DEV%20License%20CRS.flf?dl=1' `
    -vmAdminUsername admin `
    -adminPassword (convertTo-SecureString -String $password -AsPlainText -Force) `
    -memoryLimit 2G `
    -updateHosts `
    -auth NavUserPassword `
    -accept_eula `
    -additionalParameters @('--publish 1433:1433') `
    -Verbose #>

New-NavContainer `
    -accept_eula `
    -containerName 'TESTServer' `
    -imageName navdocker.azurecr.io/dynamics-nav:devpreview `
    -licenseFile 'https://www.dropbox.com/s/ikizvkpl0pgbwf1/2017%20DEV%20License%20CRS.flf?dl=1' `
    -vmAdminUsername admin `
    -adminPassword (convertTo-SecureString -String $password -AsPlainText -Force) `
    -memoryLimit 2G `
    -updateHosts `
    -auth NavUserPassword `
    -includeCSide `
    -Verbose `
    #-additionalParameters @('--publish 1433:1433')