# rebash

Adds custom aliases and functions to the bash shell (OSX and Windows support).

## Credits

Standing on the shoulders of giants. This project was based on and inspired by [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) and [bash-it](https://github.com/revans/bash-it).

## Install on OSX

    > git clone https://github.com/mrydengren/rebash.git ~/.rebash
    > . ~/.rebash/tools/install.osx.bash

## Install on Windows

    > git clone https://github.com/mrydengren/rebash.git ~/.rebash
    > . ~/.rebash/tools/install.win.bash
    
## Uninstall

    > rebash uninstall
    
## Custom

For user-specific aliases and functions please add `.bash_profile_custom` to your user folder; rebash will source this file, if it exists.

    > touch ~/.bash_profile_custom