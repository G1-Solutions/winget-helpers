
function categories([string[]]$categories)
{
    return @( $null, '') + $categories
}

$packages = @(
	@{identifier = "Microsoft.VC++2013Redist-x64"; categories=$( categories(@("runtimes", "user-desktop")) ) },
	@{identifier = "Microsoft.DotNet.DesktopRuntime.6"; categories=$( categories(@("runtimes", "user-desktop")) ) },
	@{identifier = "Oracle.JavaRuntimeEnvironment"; categories=$( categories(@("runtimes", "user-desktop")) ) },
	@{identifier = "Microsoft.DotNet.Runtime.3_1"; categories=$( categories(@("runtimes", "user-desktop")) ) },
	@{identifier = "Git.Git"; categories=$( categories(@("source-control", "development")) ) },
	@{identifier = "7zip.7zip"; categories=$( categories(@("utilities", "user-desktop")) ) },
	@{identifier = "TeamViewer.TeamViewer"; categories=$( categories(@("utilities")) ) },
	@{identifier = "TeamViewer.TeamViewer.Host"; categories=$( categories(@("utilities", "user-desktop")) ) },
	@{identifier = "Microsoft.PowerToys"; categories=$( categories(@("utilities", "user-desktop")) ) },
	@{identifier = "WinSCP.WinSCP"; categories=$( categories(@("utilities")) ) },
	@{identifier = "bitvise.SSHClient"; categories=$( categories(@("utilities")) ) },
	@{identifier = "TeraTermProject.teraterm"; categories=$( categories(@("utilities")) ) },
	@{identifier = "Amazon.AWSCLI"; categories=$( categories(@("utilities", "cloud")) ) },
	@{identifier = "VideoLAN.VLC"; categories=$( categories(@("utilities", "multimedia")) ) },
	@{identifier = "Microsoft.Powershell"; categories=$( categories(@("utilities", "user-desktop")) ) },
	@{identifier = "Microsoft.WindowsTerminal"; categories=$( categories(@("utilities", "user-desktop")) ) },
	@{identifier = "AcroSoftware.CutePDFWriter"; categories=$( categories(@("utilities", "user-desktop")) ) },
	@{identifier = "Mozilla.Firefox"; categories=$( categories(@("browsers")) ) },
	@{identifier = "Mozilla.Firefox.ESR"; categories=$( categories(@("browsers", "user-desktop")) ) },
	@{identifier = "Microsoft.VisualStudioCode"; categories=$( categories(@("editors", "user-desktop")) ) },
	@{identifier = "Adobe.Acrobat.Reader.64-bit"; categories=$( categories(@("utilities", "user-desktop")) ) },
	@{identifier = "Microsoft.OneDrive"; categories=$( categories(@("cloud", "storage", "user-desktop")) ) },
	@{identifier = "Jabra.Direct"; categories=$( categories(@("utilities", "communication")) ) },
	@{identifier = "PostgreSQL.pgAdmin"; categories=$( categories(@("utilities", "dbms", "postgres")) ) },
	@{identifier = "tencent.wechat"; categories=$( categories(@("wechat")) ) },
	@{identifier = "spotify.spotify"; categories=$( categories(@("music-streaming", "streaming")) ) },
	@{identifier = "Cisco.CiscoWebexMeetings"; categories=$( categories(@("teleconference")) ) },
	@{identifier = "zoom.zoom"; categories=$( categories(@("teleconference")) ) }
)