# init scoop
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

Invoke-Expression (new-object net.webclient).downloadstring('https://get.scoop.sh')
scoop install git openssh aria2 concfg sudo
scoop bucket add extras java
scoop update
scoop install shadowsocksr-csharp fiddler terminus
scoop install python
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
install-module Get-ChildItemColor -scope CurrentUser
install-module oh-my-posh -scope CurrentUser 
install-module pscolor -scope CurrentUser
install-module posh-ssh -scope CurrentUser
install-module posh-git -scope CurrentUser

# create symbolic link for powershell profile
sudo New-Item -Path $profile -Value ~/repo/dotfiles/ps_profile.ps1 -ItemType SymbolicLink -Force
# create symbolic link for tgfont
sudo New-Item -Path "~\AppData\Roaming\Telegram Desktop\winmm.dll" -Value ~/repo/dotfiles/tgfont/FontMod.dll -ItemType SymbolicLink -Force
sudo New-Item -Path "~\AppData\Roaming\Telegram Desktop\FontMod.yaml" -Value ~/repo/dotfiles/tgfont/FontMod.yaml -ItemType SymbolicLink -Force
# create symbolic link for vscode config
code --install-extension yuchiu2002.default-material-dark-theme
code --install-extension yzhang.markdown-all-in-one
code --install-extension k--kato.intellij-idea-keybindings
sudo New-Item -Path "~\AppData\Roaming\Code\User\settings.json" -Value ~/repo/dotfiles/vscode_settings.json -ItemType SymbolicLink -Force
# init hyper shell
scoop install hyper
sudo New-Item -Path "~\AppData\Roaming\Hyper\.hyper.js" -Value ~/repo/dotfiles/.hyper.js -ItemType SymbolicLink -Force
# init typora themes
scoop install typora
rm -r ~\AppData\Roaming\Typora\themes
sudo New-Item -Path "~\AppData\Roaming\Typora\themes" -Value ~/repo/dotfiles/Typora/themes -ItemType SymbolicLink -Force