#!/usr/bin/env bash
show_usage () {
    echo "Usage: gunp [<remote-name=origin>]"
    echo "Shows unpushed commits."
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
git log --abbrev-commit --format=oneline "$remote/$current_branch..HEAD"