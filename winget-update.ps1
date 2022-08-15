param([String]$category)

. $PSScriptRoot\winget-system-installer.ps1
. $PSScriptRoot\winget-packages.ps1

$package = $packages | where-object { $_.identifier.ToLower() -eq $category }

if( $null -ne $package )
{
    write-host "Trying to update $($package.identifier)..."

    winget upgrade $category

    return;
}

$packages = $packages | Where-Object { $_.categories -icontains $category } 

$packages | ForEach-Object { 
    write-host "Trying to update $($_.identifier)..."

    winget upgrade $_.identifier 

    write-host "`r`n" -NoNewline
}