# Self-elevate the script if required
if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
  if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
    $CommandLine = "-NoExit -File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
    Start-Process -Wait -FilePath PowerShell.exe -Verb Runas -ArgumentList $CommandLine
    Exit
  }
}

# restore old context menu
$registryPath = "HKCU:\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32"

if (!(Test-Path -Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
}

Set-ItemProperty -Path $registryPath -Name "(Default)" -Value ""

# install packages
choco install altsnap autohotkey chezmoi Firefox git gsudo lf nerd-fonts-Inconsolata powershell-core revo-uninstaller quicklook spotify ungoogled-chromium vcredist140 vcredist2015 vortex vscode vscodium wincompose Everything dotnetfx discord

winget install Olivia.VIA valinet.ExplorerPatcher qBittorrent.qBittorrent OpenplanetNext Microsoft.WindowsTerminal FiloSottile.age AgileBits.1Password LocalSend.LocalSend