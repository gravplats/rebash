rebash_help () {
    echo "Usage: rebash [ go | update]"
    echo ""
    echo "  -h, --help              display this help text and exit"    
    echo "  go                      go to the rebash directory"
    echo "  update                  update rebash"
    echo ""
}

rebash_go () {
    cd ~/.rebash
}

rebash_update () {
    git pull --ff-only origin master
    reload
}

rebash () {
    case $1 in
        -h|--help|"help")
            rebash_help 
            ;;
        go)
            rebash_go 
            ;;
        update)
            rebash_update 
            ;;
        *)
            rebash_help 
            ;;
    esac
}