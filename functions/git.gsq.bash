gsq () {
    if [[ -z "$1" ]]; then
        echo "Usage: gsq <branch> [<message>]"
        echo "Squashes all commits that are in the current branch but not in the specified branch into a single commit."
    else
        git log --abbrev-commit --format=oneline $1.. | wc -l | git reset --soft HEAD~$(sed "s/^ *//g")
        [[ -z "$2" ]] && git commit || git commit --message "$2"
    fi                          
}

#autocomplete
__git_complete gsq _git_reset