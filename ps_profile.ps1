Set-PSReadlineOption -BellStyle None

Import-Module Get-ChildItemColor
Import-Module posh-git
Import-Module oh-my-posh
Import-Module PSColor
Import-Module Posh-SSH
Import-Module PSReadline

${function:dotfiles} = { Set-Location ~\repo\dotfiles }

Set-Alias l Get-ChildItemColor -option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
Set-Alias open Invoke-Item
Set-Alias which Get-Command
Set-Alias ssr shadowsocksr

Set-Theme Paradox

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete