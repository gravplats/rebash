rebash_help () {
    echo "Usage: rebash [ <verb> ]"
    echo ""
    echo "  -h, --help              display this help text and exit"
    echo "  go                      go to the rebash directory"
    echo "  return                  return to the previous directory, if any"
    echo "  uninstall               uninstall rebash"
    echo "  update                  update rebash"
    echo ""
}

rebash_go () {
    pushd . > /dev/null
    cd ~/.rebash
}

rebash_return () {
    pushd &> /dev/null
}

rebash_uninstall () {
    if [[ $PWD == ~/.rebash* ]]; then
        cd ~
    fi

    . ~/.rebash/tools/uninstall.bash
}

rebash_update () {
    rebash go
    git pull --ff-only origin master
    echo -e "\033[00;32m'rebash' has been updated.\033[0m"
    reload
    rebash return
}

rebash () {
    case $1 in
        -h|--help|"help")
            rebash_help 
            ;;
        go)
            rebash_go 
            ;;
        return)
            rebash_return
            ;;
        uninstall)
            rebash_uninstall
            ;;
        update)
            rebash_update 
            ;;
        *)
            rebash_help 
            ;;
    esac
}