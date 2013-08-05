#!/usr/bin/env bash
show_usage () {
    echo "Usage: gpush [-f | --force] [<remote-name=origin>]"
    echo "Pushes the current branch."
    echo ""
    echo "  -f, --force             overwrites remote repository; use it with care."
    echo "  -h, --help              displays this help text and exits"
    echo ""    
}

remote="origin"

while test "$#" != 0; do
    case "$1" in
        -h|--help|"help")
            show_usage
            exit
            ;;
        -f|--force)
            options="--force"
            ;;
        *)
            remote=$1
            ;;
    esac
    shift
done

current_branch=$(git symbolic-ref --short HEAD)
git push $options $remote $current_branch