param([String]$category)

. $PSScriptRoot\winget-system-installer.ps1
. $PSScriptRoot\winget-packages.ps1

$package = $packages | where-object { $_.identifier.ToLower() -eq $category }

if( $null -ne $package )
{
    write-host "Trying to install $($package.identifier)..."

    winget install $category --scope machine

    return;
}

$packages = $packages | Where-Object { $_.categories -icontains $category } 

$packages | ForEach-Object { 
    write-host "Trying to install $($_.identifier)..."

    winget install $_.identifier --scope machine

    write-host "`r`n" -NoNewline
}