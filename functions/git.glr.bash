glr () {
    if [[ -z "$1" ]]; then
        echo "Usage: glr <branch>"
        echo "Shows the commits that are in the current branch but not in the specified branch."
    else
        git log --abbrev-commit --format=oneline $1..
    fi    
}

#autocomplete
__git_complete glr _git_log