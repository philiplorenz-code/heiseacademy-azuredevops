function Set-MahlzeitStatus {
    [CmdletBinding()]
    param(
        [string]$Name = "Philip",
        [string]$Status = "Satt"
    )
    Write-Output "$Name ist jetzt $Status."
}
