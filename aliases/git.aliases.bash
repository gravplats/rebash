alias ga='git add --all'
alias gam='git commit --amend --reuse-message HEAD'

alias gb='git branch --verbose'
alias gbb='git branch'
alias gbr='git branch -avv'

alias gc='git commit --message'
alias gcc='git commit'

alias gco='git checkout'
alias gcob='git checkout -b'

__git_complete gco _git_checkout
__git_complete gcob _git_checkout

alias gl='git log --abbrev-commit --graph --format=oneline'
alias glg='git log --abbrev-commit --format=oneline | grep'
alias gll='git log'
alias glt='git log --abbrev-commit --graph --format=oneline --since=6am'

__git_complete gl _git_log
__git_complete glg _git_log
__git_complete gll _git_log
__git_complete glt _git_log

alias gp='git pull --ff-only'

alias gre='git rebase'
__git_complete gre _git_rebase

alias gs='git status --short --branch'
alias gss='git status'