#!/bin/bash

input_dir=$SOURCE_REPO_DIR'/'$SOURCE_REPO_SUBDIR

if [[ -d "$input_dir" ]];
    then
        echo "$input_dir found, importing content from it."
else
    
        echo "$input_dir not found, cannot import content."
        exit 1
fi


if [[ -d "$TARGET_OUTPUT_DIR" ]]
    then
        echo "$TARGET_OUTPUT_DIR exists, moving content into it."
else
    echo "Creating '$TARGET_OUTPUT_DIR'."
    mkdir "$TARGET_OUTPUT_DIR"
fi

work_dir=$(pwd)
target_dir="$work_dir/$TARGET_OUTPUT_DIR"


cd $input_dir

find "." -type f -follow -print | cpio -p -dumv "$target_dir"

cd $work_dir

# if [[$CLEAN_UP != 'true']]
#     then
#         exit
# else 
#     rm -rf "$TEMP_WORK_DIR"
# fi