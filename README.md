# install chocolatey
```
Set-ExecutionPolicy Bypass -Scope Process

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```
# install winget
```
$url = "https://github.com/microsoft/winget-cli/releases/download/v1.7.10661/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
$outputPath = "$env:TEMP\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"

Invoke-WebRequest -Uri $url -OutFile $outputPath
Add-AppxPackage -Path $outputPath
```
