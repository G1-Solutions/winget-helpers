param([String]$category)

. winget-packages.ps1

$packages = $packages | Where-Object { $_.categories -icontains $category } 

$packages | ForEach-Object { 
    write-host "Trying to upgrade $($_.identifier)..."

    winget upgrade $_.identifier 

    write-host "`r`n" -NoNewline
}