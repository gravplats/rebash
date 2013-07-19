#!/usr/bin/env bash
if [ -d ~/.rebash ]; then
    rm -rf ~/.rebash
fi

if [ -f ~/.bash_profile.bak ] || [ -h ~/.bash_profile.bak ]; then
    echo "Restoring '.bash_profile' from '.bash_profile.bak'."
    mv ~/.bash_profile.bak ~/.bash_profile
fi

if [ -d ~/.rebash/scripts ]; then
    for script_file in ~/.rebash/scripts/*.bash; do
        script=${script_file##*/}
        target="/usr/bin/${script/.bash/}"
        
        if [ -e $target ]; then
            echo "Removing symbolic link: $target"
            rm $target
        fi
    done
fi

source ~/.bash_profile