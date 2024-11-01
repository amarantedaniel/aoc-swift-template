#!/bin/bash

BASE_FOLDER="AdventOfCode/Sources/Day01"
PARENT_FOLDER=$(dirname "$BASE_FOLDER")

for day in $(seq -w 2 25); do
    NEW_FOLDER_NAME="Day$day"
    NEW_FOLDER_PATH="$PARENT_FOLDER/$NEW_FOLDER_NAME"
    
    cp -r "$BASE_FOLDER" "$NEW_FOLDER_PATH"

    find "$NEW_FOLDER_PATH" -type f | while read -r file; do
        sed -i '' "s/Day01/$NEW_FOLDER_NAME/g" "$file"
        
        if [[ "$file" == *"Day01"* ]]; then
            NEW_FILE_PATH="${file//Day01/$NEW_FOLDER_NAME}"
            mv "$file" "$NEW_FILE_PATH"
        fi
    done
done
