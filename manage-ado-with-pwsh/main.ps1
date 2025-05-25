Install-Module -Name AzDevOps
Get-Command -Module AzDevOps

$params = @{
    Orgname = "heiseacademy-azuredevops"
    PAT = "72cDxhASkUDf6O80RsWNFwO00tBTLmcxtxMYdDTQR1RzvXnbKPcfJQQJ99BEACAAAAA97PBoAAASAZDO1RNO"
}
Connect-AdoOrganization @params

Get-AdoProject

New-AdoProject -Name "PowerShellBuilt4" -Description "Dieses Projekt wurde mit PowerShell angelegt"