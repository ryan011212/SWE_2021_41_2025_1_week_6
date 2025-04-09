#!/bin/bash

BASE_DIR="./SWE_2021_41_2025_1_week_6-main"
FILES_DIR="$BASE_DIR/files"

# getting everything
for file in "$FILES_DIR"/*; do
    # sorting files out
    if [ -f "$file" ]; then
        # first_char will be first character of file name
        first_char=$(basename "$file" | cut -c1)
        # folder_name will be first character but if it's capital letters, change to small letters
        folder_name=$(echo "$first_char" | tr 'A-Z' 'a-z')
        # moving files to folders
        mv "$file" "$BASE_DIR/$folder_name"
    fi
done

exit 0