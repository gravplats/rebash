gtrack() {
    if [[ $1 = "help" ]]; then
        echo "Usage: gtrack [<remote-name=origin>]"
        echo "Tracks the current branch."
        echo ""
        echo "  -h, --help              displays this help text and exits"
        echo ""
    else
        local remote=${1:-"origin"}
        local current_branch=$(git symbolic-ref --short HEAD)
        
        git branch --set-upstream-to "$remote/$current_branch"
    fi
}

#autocomplete
__git_complete gtrack _git_remote