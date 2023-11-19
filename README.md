# In powershell as admin:
```
Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation
choco install Firefox autohotkey revo-uninstaller powertoys nerd-fonts-FiraCode powershell-core git gsudo vortex neovim altdrag wincompose winrar synctrayzor localsend vscodium
```

Put hide_taskbar in shell:startup

# In CMD as admin, to restore old right click
```
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
```
