gup () {
    if [[ $1 = help ]]; then
        echo "Usage: gup"
        echo "Updates a feature branche with latest commits from master (release) branch."
    else
        local feature_branch=$(__rebash_git_current_branch)
        local release_branch=$(__rebash_git_relative_branch)
        
        if [[ "$feature_branch" == "$release_branch" ]]; then
            echo "You're on a release branch."
        else
            git checkout $release_branch || return # might fail if we have uncommitted changes.
            git pull --ff-only 
            git rebase $release_branch $feature_branch
        fi
    fi
}