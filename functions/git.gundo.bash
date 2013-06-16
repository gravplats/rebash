gundo() {
    echo "The original HEAD refers to the following commit:"
    gl -1 ORIG_HEAD

    read -p "Restore HEAD to the specified commit [y/n]? " -n 1; echo
    if echo $REPLY | grep -E "^[Yy]$" > /dev/null; then
        git reset --hard ORIG_HEAD
    fi
}