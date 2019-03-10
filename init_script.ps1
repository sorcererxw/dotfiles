# init scoop
Invoke-Expression (new-object net.webclient).downloadstring('https://get.scoop.sh')
scoop install git openssh aria2 concfg sudo
scoop bucket add extras java
scoop update
scoop install shadowsocksr-csharp fiddler typora terminus
scoop install oraclejdk8

# init ssh
# ssh-keygen -t rsa -b 4096 -C "tujipqy@gmail.com"

# init git
git config --global http.proxy 'socks5://127.0.0.1:1080'
git config --global https.proxy 'socks5://127.0.0.1:1080'
git config --global user.name "SorcererXW"
git config --global user.email "tujipqy@gmail.com"

mkdir ~/repo
git clone git@github.com:sorcererxw/dotfiles.git ~/repo

# create symbolic link for powershell profile
sudo New-Item -Path $profile -Value ~/repo/dotfiles/ps_profile.ps1 -ItemType SymbolicLink -Force
# create symbolic link for tgfont
sudo New-Item -Path "~\AppData\Roaming\Telegram Desktop\TGFont.json" -Value ~/repo/dotfiles/TGFont.json -ItemType SymbolicLink -Force