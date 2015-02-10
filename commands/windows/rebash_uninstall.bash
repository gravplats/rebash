rebash_uninstall () {
    if [[ $PWD == ~/.rebash* ]]; then
        cd ~
    fi

    . ~/.rebash/tools/windows/uninstall.bash
}