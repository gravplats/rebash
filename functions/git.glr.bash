glr () {
    if [[ $1 = "help" ]]; then
        echo "Usage: glr <branch>"
        echo "Shows the commits that are in the current branch but not in the specified branch."
    else
        local branch=${1:-$(__rebash_git_relative_branch)}
        
        echo "Commits in '$(__rebash_git_current_branch)' but not in '$branch'."
        git log --abbrev-commit --format=oneline $branch..    
    fi
}

#autocomplete
__git_complete glr _git_log