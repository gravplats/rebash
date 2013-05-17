#!/usr/bin/env bash
if [ -d ~/.rebash ]; then
    rm -rf ~/.rebash
fi

if [ -f ~/.bash_profile.bak ] || [ -h ~/.bash_profile.bak ]; then
    mv ~/.bash_profile.bak ~/.bash_profile
fi

source ~/.bash_profile