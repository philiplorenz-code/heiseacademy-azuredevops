param (
    [version]$Version = "1.0.0"
)

# $command = Get-Command -Name "nuget" -CommandType Application

& C:\Users\azureuser\Desktop\MahlzeitModul\nuget.exe pack "$PSScriptRoot/Output/MahlzeitModul/MahlzeitModul.nuspec" -OutputDirectory "$PSScriptRoot/Output/Nuget" -Version $Version