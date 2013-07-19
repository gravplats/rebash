#!/usr/bin/env bash
show_usage () {
    echo "Usage: gundo [options]"
    echo "Undoes the most recent merge, rebase or reset."
    echo ""
    echo "  -h, --help              display this help text and exit"
    echo ""
}

case "$1" in
    -h|--help)
        show_usage
        exit
        ;;
esac

echo "The original HEAD refers to the following commit:"
git log --abbrev-commit --graph --format=oneline -1 ORIG_HEAD

read -p "Restore HEAD to the specified commit [y/n]? " -n 1; echo
if echo $REPLY | grep -E "^[Yy]$" > /dev/null; then
    git reset --hard ORIG_HEAD
fi