glint () {
    if [[ $1 = "help" ]]; then
        echo "Usage: glint"
        echo "Local integration of feature branch with release branch."
    else
        local feature_branch=$(__rebash_git_current_branch)
        local release_branch=$(__rebash_git_relative_branch) 
        
        if [[ "$feature_branch" == "$release_branch" ]]; then
            echo "You're on a release branch."
            return;
        fi

        git rebase $feature_branch $release_branch
    fi
}

#autocomplete
__git_complete gint _git_rebase