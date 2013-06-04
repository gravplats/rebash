ORIGINAL_IFS=$IFS
IFS=$(echo -en "\n\b")
 
for script_file_type in "aliases" "functions"; do
    if [ ! -d ~/.rebash/${script_file_type} ]; then
        continue;
    fi
    
    for script_file in ~/.rebash/${script_file_type}/*.bash; do
		source $script_file
    done
done
 
IFS=$ORIGINAL_IFS