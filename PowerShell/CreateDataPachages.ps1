. '.\PowerShell\Settings.ps1'

Enter-PSSession `
    -ComputerName $DockerHost `
    -Credential $DockerHostCredentials `
    -UseSSL:$DockerHostUseSSL `
    -SessionOption $DockerHostSessionOption

    
Enter-NavContainer -containerName 'navserver'

Export-NAVAppTableData -ServerInstance NAV -Path 'C:\ProgramData\navcontainerhelper\NAVDataPackages' -TableId 50100 
