function Write-Log {
    param([string]$Message)
    Write-Host "[$(Get-Date -Format T)] $Message"
}
