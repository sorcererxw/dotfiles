# init scoop
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

Invoke-Expression (new-object net.webclient).downloadstring('https://get.scoop.sh')
scoop install git openssh aria2 concfg sudo
scoop bucket add extras java
scoop update
scoop install shadowsocksr-csharp fiddler typora terminus

scoop install oraclejdk-lts
scoop reset oraclejdk-lts

# init ssh
# ssh-keygen -t rsa -b 4096 -C "tujipqy@gmail.com"

# init git
git config --global http.proxy 'socks5://127.0.0.1:1080'
git config --global https.proxy 'socks5://127.0.0.1:1080'
git config --global user.name "SorcererXW"
git config --global user.email "tujipqy@gmail.com"

New-Item -ItemType "directory" -Path "~/repo" 
git clone git@github.com:sorcererxw/dotfiles.git ~/repo

# import powershell config
concfg import ~/repo/dotfiles/concfg.json

# install ps module
install-module Get-ChildItemColor -scope currentuser
install-module oh-my-posh -scope currentuser
install-module pscolor -scope currentuser
install-module posh-ssh -scope currentuser
install-module posh-git -scope currentuser

# create symbolic link for powershell profile
sudo New-Item -Path $profile -Value ~/repo/dotfiles/ps_profile.ps1 -ItemType SymbolicLink -Force
# create symbolic link for tgfont
sudo New-Item -Path "~\AppData\Roaming\Telegram Desktop\TGFont.json" -Value ~/repo/dotfiles/TGFont.json -ItemType SymbolicLink -Force
# create symbolic link for vscode config
sudo New-Item -Path "~\AppData\Roaming\Code\User\settings.json" -Value ~/repo/dotfiles/vscode_settings.json -ItemType SymbolicLink -Force
