# In powershell as admin:
```
Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation
choco install Firefox autohotkey revo-uninstaller powertoys nerd-fonts-FiraCode powershell-core git gsudo vortex neovim altdrag wincompose winrar synctrayzor localsend vscodium
```

Put hide_taskbar in shell:startup
