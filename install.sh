#!/usr/bin/env bash
if [ -d ~/.rebash ]; then
    echo "You already have 'rebash' installed."
    exit
fi

if [ -f ~/.bash_profile ] || [ -h ~./.bash_profile ]; then
    cp ~/.bash_profile ~/.bash_profile.bak
    echo "Backing up '.bash_profile' to '.bash_profile.bak'."
fi

git clone https://github.com/mrydengren/rebash.git ~/.rebash
cp ~/.rebash/templates/.bash_profile.template ~/.bash_profile