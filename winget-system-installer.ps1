Write-Host "Checking if WinGet is installed..."
$wingetCommand = Get-Command winget.exe -ErrorAction SilentlyContinue

if( $null -eq $wingetCommand)
{
	Write-Host "Downloading Microsoft.DesktopAppInstaller..."
	Invoke-WebRequest "https://github.com/microsoft/winget-cli/releases/download/v1.2.10271/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" -OutFile Microsoft.DesktopAppInstaller.msixbundle

	Write-Host "Installing Microsoft.DesktopAppInstaller..."
	Add-AppPackage -Path Microsoft.DesktopAppInstaller.msixbundle
}

Write-Host "WinGet is installed.`r`n"