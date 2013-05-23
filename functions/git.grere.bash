grere () {
    if [[ -z "$1" || -z "$2" ]]; then
        echo "Usage: grere <branch 1> <branch 2>"
        echo "Rebase branch 1 onto branch 2 and then branch 2 onto branch 1."
    else
        git rebase $1 $2
        git rebase $2 $1
    fi                          
}

#autocomplete
__git_complete grere _git_rebase