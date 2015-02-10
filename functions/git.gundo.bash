gundo () {
    if [[ $1 = "help" ]]; then
        echo "Usage: gundo"
        echo "Undoes the most recent merge, rebase or reset."
    else
        echo "The original HEAD refers to the following commit:"
        git log --abbrev-commit --graph --format=oneline -1 ORIG_HEAD

        read -p "Restore HEAD to the specified commit [y/n]? " -n 1; echo
        if echo $REPLY | grep -E "^[Yy]$" > /dev/null; then
            git reset --hard ORIG_HEAD
        fi
    fi
}