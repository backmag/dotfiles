# NB! Update the path to the config
oh-my-posh init pwsh --config ~/dotfiles/config.omp.json | Invoke-Expression

# Import modules
Import-Module -Name Terminal-Icons
Import-Module -Name PSReadLine
Import-Module -Name posh-git
Import-Module -Name PSFzf

# Set fzf shortcuts
Set-PsFzfOption -PSReanlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Use the history as a cheap autocomplete option
Set-PSReadLineOption -PredictionSource History

# Aliases
Set-Alias vim nvim
Set-Alias l ls

function .. { Set-Location .. }
function ... { Set-Location ../.. }
