gint () {
    if [[ $1 = "help" ]]; then
        echo "Usage: gint"
        echo "Integrates a feature branch with the master (release) branch."
    else
        local feature_branch=$(__rebash_git_current_branch)
        local master_branch=$(__rebash_git_master_branch) 
        
        if [[ "$feature_branch" == "$master_branch" ]]; then
            echo "You're on the master branch."
        else
            git rebase $feature_branch $master_branch
        fi        
    fi
}

#autocomplete
__git_complete gint _git_rebase