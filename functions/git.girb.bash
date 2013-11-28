girb () {
    if [[ $1 = "help" ]]; then
        echo "Usage: girb <branch>"
        echo "Performs an interactive rebase on the commits that are in the current branch but not in the specified branch."        
    else
        local branch=${1:-$(__rebash_git_relative_branch)}
   
        echo "Interactive rebase on commits in '$(__rebash_git_current_branch)' but not in '$branch'."
        git log --abbrev-commit --format=oneline $branch.. | wc -l | git rebase --interactive HEAD~$(sed "s/^ *//g")
    fi
}

# autocomplete
__git_complete girb _git_rebase