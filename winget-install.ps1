[CmdletBinding(DefaultParameterSetName="By alias", PositionalBinding=$true)]
param(
	# Package alias
	[String]
	[Parameter(ParameterSetName="By alias", Position=0, Mandatory=$true, HelpMessage="Alias of the winget package as specified in packages.json")]
	[Parameter(ParameterSetName="By alias and category", Position=0, Mandatory=$true)]
	$alias = $null, 

	[String]
	[Parameter(ParameterSetName="By category", Position=0, Mandatory=$true)]
	[Parameter(ParameterSetName="By alias and category", Position=1, Mandatory=$true)]
	$category = $null,

	[String]
	[Parameter(ParameterSetName="By identifier", Position=0, Mandatory=$true, HelpMessage="identifier of the winget package")]
	$identifier = $null
)

. $PSScriptRoot\winget-system-installer.ps1
. $PSScriptRoot\winget-packages.ps1


function installPackages() {
	param(
		[String[]]
		$packageIdentifiers
	)

	if( $packageIdentifiers.Count -eq 0)
	{
		Write-Information -MessageData "No package found matching criteria" -InformationAction Continue

		return
	}

	$packageIdentifiers | ForEach-Object {

		write-host "Trying to install $($_)..."

		winget install $_ --scope machine
	
		write-host "`r`n" -NoNewline

	}
}

switch ($PSCmdlet.ParameterSetName) {

	"By alias" { 
		$packages = $packages | Where-Object { $_.alias.ToUpper() -eq $alias.ToUpper() } 
	
		installPackages($packages | Select-Object -ExpandProperty identifier )

	 }

	 "By category" {

		$packages = $packages | Where-Object { $_.categories -icontains $category } 
	
		installPackages($packages | Select-Object -ExpandProperty identifier )

	 }

	 "By alias and category" {
		
		$packages = $packages | Where-Object { ($null -eq $alias -or $alias -eq "" -or $_.alias.ToUpper() -eq $alias.ToUpper()) -and ($_.categories -icontains $category -or $null -eq $category) } 
	
		installPackages($packages | Select-Object -ExpandProperty identifier )
	 }

	 "By identifier" {
		winget install $identifier --scope machine
	 }
}