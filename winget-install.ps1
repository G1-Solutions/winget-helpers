param([String]$category)

. winget-packages.ps1

$packages = $packages | Where-Object { $_.categories -icontains $category } 

$packages | ForEach-Object { 
    write-host "Trying to install $($_.identifier)..."

    winget install $_.identifier 

    write-host "`r`n" -NoNewline
}