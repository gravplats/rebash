#!/usr/bin/env bash
show_usage () {
    echo "Usage: gpush [<remote-name=origin>]"
    echo "Pushes the current branch."
    echo ""
    echo "  -h, --help              display this help text and exit"
    echo ""    
}

case "$1" in
    -h|--help|"help")
        show_usage
        exit
        ;;
    *)
        remote=${1:-"origin"}
        ;;
esac

current_branch=$(git symbolic-ref --short HEAD)
git push $remote $current_branch