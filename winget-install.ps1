param([String]$category)

. .\winget-system-installer.ps1
. .\winget-packages.ps1

$packages = $packages | Where-Object { $_.categories -icontains $category } 

$packages | ForEach-Object { 
    write-host "Trying to install $($_.identifier)..."

    winget install $_.identifier --scope machine

    write-host "`r`n" -NoNewline
}