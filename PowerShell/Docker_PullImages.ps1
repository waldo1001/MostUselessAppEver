<#
Enter-PSSession -Authentication Basic -Credential Administrator -ComputerName WaldoCoreVM 
enter-pssession waldocorevm
#>

. '.\PowerShell\Settings.ps1'

docker pull $DockerImage
