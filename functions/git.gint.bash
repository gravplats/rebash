gint () {
    if [[ $1 = "help" ]]; then
        echo "Usage: gint"
        echo "Integrates a feature branch with the master (release) branch."
    else
        local feature_branch=$(__rebash_git_current_branch)
        local release_branch=$(__rebash_git_relative_branch) 
        
        if [[ "$feature_branch" == "$release_branch" ]]; then
            echo "You're on a release branch."
        else
            git rebase $feature_branch $release_branch
        fi        
    fi
}

#autocomplete
__git_complete gint _git_rebase