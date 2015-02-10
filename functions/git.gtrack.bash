gtrack () {
    if [[ $1 = "help" ]]; then
        echo "Usage: gtrack [<remote-name=origin>]"
        echo "Tracks the current branch."
    else
        local remote=${1:-"origin"}
        local current_branch=$(__rebash_git_current_branch)
        
        git branch --set-upstream-to "$remote/$current_branch"
    fi
}

#autocomplete
__git_complete gtrack _git_remote