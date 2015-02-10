rebash () {
    case $1 in
        go)
            rebash_go 
            ;;
        -h|--help|"help")
            rebash_help 
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