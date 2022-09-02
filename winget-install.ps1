param([String]$alias = $null, [String]$identifier = $null, [String]$category = $null)

. $PSScriptRoot\winget-system-installer.ps1
. $PSScriptRoot\winget-packages.ps1

if( $null -ne $identifier -and $identifier -ne "")
{
	$packages = $packages | where-object { $_.identifier -eq $identifier }
}
else
{
	$packages = $packages | Where-Object { ($null -eq $alias -or $alias -eq "" -or $_.alias.ToUpper() -eq $alias.ToUpper()) -and ($_.categories -icontains $category -or $null -eq $category) } 
}

$packages | ForEach-Object { 
    write-host "Trying to install $($_.identifier)..."

    winget install $_.identifier --scope machine

    write-host "`r`n" -NoNewline
}