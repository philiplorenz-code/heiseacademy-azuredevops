function Get-MahlzeitStatus {
    [CmdletBinding()]
    param(
        [string]$Name = "Philip"
    )
    Write-Output "$Name hat noch Hunger."
}
