gunp () {
    if [[ $1 = "help" ]]; then
        echo "Usage: gunp [<remote-name=origin>]"
        echo "Shows unpushed commits."
    else
        local remote=${1:-"origin"}
        local current_branch=$(__rebash_git_current_branch)
        
        git log --abbrev-commit --format=oneline "$remote/$current_branch..HEAD"
    fi
}