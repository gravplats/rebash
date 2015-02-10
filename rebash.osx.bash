ORIGINAL_IFS=$IFS
IFS=$(echo -en "\n\b")

. ~/.rebash/rebash.bash

# define aliases and functions
for script_file_type in "lib" "lib/osx" "aliases" "functions"; do
    if [ ! -d ~/.rebashx/${script_file_type} ]; then
        continue;
    fi
    
    for script_file in ~/.rebashx/${script_file_type}/*.bash; do
        . $script_file
    done
done

# define any user-specific functionality.
if [[ -e ~/.bash_profile_custom ]]; then
    . ~/.bash_profile_custom
fi

IFS=$ORIGINAL_IFS

# http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/index.html
prompt_command () {
  local GREEN="\[\033[0;32m\]"
  local BROWN="\[\033[0;33m\]"
  local RESTORE="\[\033[0m\]"

  PS1="\n$GREEN\u@\h $BROWN\w\$(__git_ps1)$RESTORE\n\$ "
}

prompt_command