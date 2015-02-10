gpush () {
    if [[ $1 = "help" ]]; then
        echo "Usage: gpush [-f | --force] [<remote-name=origin>]"
        echo "Pushes the current branch."
    else
        local remote="origin"
        local current_branch=$(__rebash_git_current_branch)

        while test "$#" != 0; do
            case "$1" in
                -f|--force)
                    options="--force"
                    ;;
                *)
                    remote=$1
                    ;;
            esac
            shift
        done
        
        git push $options $remote $current_branch
    fi
}