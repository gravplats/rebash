rebash_help () {
    echo "Usage: rebash [ <verb> ]"
    echo ""
    echo "  -h, --help              display this help text and exit"    
    echo "  go                      go to the rebash directory"
    echo "  uninstall               uninstall rebash"
    echo "  update                  update rebash"
    echo ""
}

rebash_go () {
    cd ~/.rebash
}

rebash_uninstall () {
    if [[ $PWD == ~/.rebash* ]]; then
        cd ~
    fi

    . ~/.rebash/tools/uninstall.bash
}

rebash_update () {
    pushd . > /dev/null
    rebash go
    git pull --ff-only origin master
    reload
    popd > /dev/null    
}

rebash () {
    case $1 in
        -h|--help|"help")
            rebash_help 
            ;;
        go)
            rebash_go 
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
