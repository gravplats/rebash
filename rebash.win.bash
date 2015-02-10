ORIGINAL_IFS=$IFS
IFS=$(echo -en "\n\b")

. ~/.rebash/rebash.bash

# define aliases and functions.
for script_file_type in "lib" "aliases" "functions"; do
    if [ ! -d ~/.rebash/${script_file_type} ]; then
        continue;
    fi
    
    for script_file in ~/.rebash/${script_file_type}/*.bash; do
        source $script_file
    done
done

# define any user-specific functionality.
if [[ -e ~/.bash_profile_custom ]]; then
    . ~/.bash_profile_custom
fi

IFS=$ORIGINAL_IFS