for script_file_type in "aliases" "functions"; do
    if [ ! -d ~/.rebash/${script_file_type} ]; then
        continue;
    fi
    
    for script_file in ~/.rebash/${script_file_type}/*.sh; do
        source $script_file
    done
done