gup () {
    if [[ $1 = "help" ]]; then
        echo "Usage: gup"
        echo "Updates a feature branch with latest commits from the master branch."
    else
        local feature_branch=$(__rebash_git_current_branch)
        local master_branch=$(__rebash_git_master_branch)
        
        if [[ "$feature_branch" == "$master_branch" ]]; then
            echo "You're on the master branch."
        else
            git checkout $master_branch || return # might fail if we have uncommitted changes.
            git pull --ff-only 
            git rebase $master_branch $feature_branch
        fi
    fi
}