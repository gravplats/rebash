gsq () {
    if [[ $1 = "help" ]]; then
        echo "Usage: gsq [<branch>]"
        echo "Squashes all commits that are in the current branch but not in the specified branch into a single commit."
    else
        local branch=${1:-$(__rebash_git_master_branch)}
        git log --abbrev-commit --format=oneline $branch.. | wc -l | git reset --soft HEAD~$(sed "s/^ *//g")

        echo "Squashing commits in '$(__rebash_git_current_branch)' but not in '$branch'."
        git commit || git reset --hard ORIG_HEAD
    fi
}

#autocomplete
__git_complete gsq _git_reset