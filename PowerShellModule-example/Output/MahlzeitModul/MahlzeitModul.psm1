#Region './Private/Write-Log.ps1' -1

function Write-Log {
    param([string]$Message)
    Write-Host "[$(Get-Date -Format T)] $Message"
}
#EndRegion './Private/Write-Log.ps1' 5
#Region './Public/Get-GutenAppetit.ps1' -1

function Get-GutenAppetit {
    [CmdletBinding()]
    param(
        [string]$Name = "Philip"
    )
    Write-Output "Guten Appetit, $Name!"
}
#EndRegion './Public/Get-GutenAppetit.ps1' 8
#Region './Public/Get-MahlzeitStatus.ps1' -1

function Get-MahlzeitStatus {
    [CmdletBinding()]
    param(
        [string]$Name = "Philip"
    )
    Write-Output "$Name hat noch Hunger."
}
#EndRegion './Public/Get-MahlzeitStatus.ps1' 8
#Region './Public/Set-MahlzeitStatus.ps1' -1

function Set-MahlzeitStatus {
    [CmdletBinding()]
    param(
        [string]$Name = "Philip",
        [string]$Status = "Satt"
    )
    Write-Output "$Name ist jetzt $Status."
}
#EndRegion './Public/Set-MahlzeitStatus.ps1' 9
