# create symbolic link for powershell profile
sudo New-Item -Path $profile -Value ~/repo/dotfiles/ps_profile.ps1 -ItemType SymbolicLink 