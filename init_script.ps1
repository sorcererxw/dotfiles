Set-Location ~
mkdir repo

# create symbolic link for powershell profile
sudo New-Item -Path $profile -Value ~/repo/dotfiles/ps_profile.ps1 -ItemType SymbolicLink 
# create symbolic link for tgfont
sudo New-Item -Path "~\AppData\Roaming\Telegram Desktop\TGFont.json" -Value ~/repo/dotfiles/TGFont.json -ItemType SymbolicLink