#!/usr/bin/env bash
show_usage () {
    echo "Usage: grew [--soft | --mixed | --hard ] [number of commits=0]"
    echo "Rewinds the HEAD."
    echo ""
    echo "      --hard              resets the index and working tree; this is the default action"
    echo "  -h, --help              displays this help text and exits"
    echo "      --mixed             resets the index but not the working tree"
    echo "      --soft              resets HEAD but leaves files 'changed to be commited'"
    echo ""
}

commits=0
options="--hard"

while test "$#" != 0; do
    case "$1" in
        -h|--help|"help")
            show_usage
            exit
            ;;
        --soft)
            options="--soft"
            ;;
        --mixed)
            options="--mixed"
            ;;
        --hard)
            options="--hard"
            ;;
        *)
            commits=$1
            ;;
    esac
    shift
done
    
git reset $options HEAD~$commits