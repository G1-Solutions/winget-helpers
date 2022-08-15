
function categories([string[]]$categories)
{
    return @( $null, '') + $categories
}

$packages = @(
	# @{identifier = ""; categories=$( categories(@("")) ) },
	@{identifier = "7zip.7zip"; categories=$( categories(@("utilities", "user-desktop")) ) },
	@{identifier = "AcroSoftware.CutePDFWriter"; categories=$( categories(@("utilities", "user-desktop")) ) },
	@{identifier = "Adobe.Acrobat.Reader.64-bit"; categories=$( categories(@("utilities", "user-desktop")) ) },
	@{identifier = "Amazon.AWSCLI"; categories=$( categories(@("utilities", "cloud")) ) },
	@{identifier = "Cisco.CiscoWebexMeetings"; categories=$( categories(@("teleconference")) ) },
	@{identifier = "bitvise.SSHClient"; categories=$( categories(@("utilities")) ) },
	@{identifier = "chrisant996.clink"; categories=$( categories(@("utilities", "terminal", "cli")) ) }
	@{identifier = "Dell.CommandUpdate.Universal"; categories=$( categories(@("dell")) ) },
	@{identifier = "Docker.Desktop"; categories=$( categories(@("container", "virtualization")) ) },
	@{identifier = "DominikReichl.KeePass"; categories=$( categories(@("security", "password", "utilities")) ) },
	@{identifier = "Git.Git"; categories=$( categories(@("source-control", "development")) ) },
	@{identifier = "Google.Chrome"; categories=$( categories(@("browsers")) ) },
	@{identifier = "Jabra.Direct"; categories=$( categories(@("utilities", "communication")) ) },
	@{identifier = "JanDeDobbeleer.OhMyPosh"; categories=$( categories(@("utilities", "terminal", "cli")) ) },
	@{identifier = "Logitech.Options"; categories=$( categories(@("utilities")) ) },
	@{identifier = "Mozilla.Firefox"; categories=$( categories(@("browsers")) ) },
	@{identifier = "Mozilla.Firefox.ESR"; categories=$( categories(@("browsers", "user-desktop")) ) },
	@{identifier = "Microsoft.DotNet.DesktopRuntime.6"; categories=$( categories(@("runtimes", "user-desktop")) ) },
	@{identifier = "Microsoft.DotNet.Runtime.3_1"; categories=$( categories(@("runtimes", "user-desktop")) ) },
	@{identifier = "Microsoft.OneDrive"; categories=$( categories(@("cloud", "storage", "user-desktop")) ) },
	@{identifier = "Microsoft.PowerToys"; categories=$( categories(@("utilities", "user-desktop")) ) },
	@{identifier = "Microsoft.Powershell"; categories=$( categories(@("utilities", "user-desktop")) ) },
	@{identifier = "Microsoft.WindowsTerminal"; categories=$( categories(@("utilities", "user-desktop")) ) },
	@{identifier = "Microsoft.VC++2013Redist-x64"; categories=$( categories(@("runtimes", "user-desktop")) ) },
	@{identifier = "Microsoft.VisualStudioCode"; categories=$( categories(@("editors", "user-desktop", "utilities", "development")) ) },
	@{identifier = "Oracle.JavaRuntimeEnvironment"; categories=$( categories(@("runtimes", "user-desktop")) ) },
	@{identifier = "PostgreSQL.pgAdmin"; categories=$( categories(@("utilities", "dbms", "postgres")) ) },
	@{identifier = "Python.Python.3"; categories=$( categories(@("sdk", "runtime", "python3")) ) },
	@{identifier = "spotify.spotify"; categories=$( categories(@("music-streaming", "streaming")) ) },
	@{identifier = "TeamViewer.TeamViewer"; categories=$( categories(@("utilities")) ) },
	@{identifier = "TeamViewer.TeamViewer.Host"; categories=$( categories(@("utilities", "user-desktop")) ) },
	@{identifier = "tencent.wechat"; categories=$( categories(@("wechat")) ) },
	@{identifier = "TeraTermProject.teraterm"; categories=$( categories(@("utilities")) ) },
	@{identifier = "VideoLAN.VLC"; categories=$( categories(@("utilities", "multimedia")) ) },
	@{identifier = "WinSCP.WinSCP"; categories=$( categories(@("utilities")) ) },
	@{identifier = "zoom.zoom"; categories=$( categories(@("teleconference")) ) }
)