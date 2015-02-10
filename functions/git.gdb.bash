gdb () {
    if [[ $1 = "help" || -z "$1" ]]; then
        echo "Usage: gdb <branch>"
        echo "Forcefully deletes the specified local and remote, if any, branch."
    else
        if [[ ! -z $(git ls-remote --heads origin "refs/heads/$1") ]]; then
            git push origin ":$1"
        fi
        git branch -D $1
    fi
}

#autocomplete
__git_complete gdb _git_branch