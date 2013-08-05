girb () {
    if [[ -z "$1" ]]; then
        echo "Usage: girb <branch>"
        echo "Performs an interactive rebase on the commits that are in the current branch but not in the specified branch."        
    else
        git log --abbrev-commit --format=oneline $1.. | wc -l | git rebase --interactive HEAD~$(sed "s/^ *//g")
    fi
}

# autocomplete
__git_complete girb _git_rebase