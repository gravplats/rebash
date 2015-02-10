__rebash_git_current_branch () {
    git symbolic-ref --short HEAD
}

__rebash_git_master_branch () {
    echo master
}