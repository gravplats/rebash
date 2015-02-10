#!/usr/bin/env bash
if [ -f ~/.bash_profile ] || [ -h ~./.bash_profile ]; then
    echo "Backing up '.bash_profile' to '.bash_profile.bak'."
    cp --interactive ~/.bash_profile ~/.bash_profile.bak    
fi

cp ~/.rebash/templates/.bash_profile.osx.template.bash ~/.bash_profile

. ~/.bash_profile