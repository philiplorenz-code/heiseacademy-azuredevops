function Get-GutenAppetit {
    [CmdletBinding()]
    param(
        [string]$Name = "Philip"
    )
    Write-Output "Guten Appetit, $Name!"
}
