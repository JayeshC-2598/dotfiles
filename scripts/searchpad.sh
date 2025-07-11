#!/bin/bash

NOTES_DIR="/media/jayeshc/WORK/Scratchpad"

if [ ! -d "$NOTES_DIR" ]; then
    echo "Error: $NOTES_DIR not found. File does not exists."
    exit 1
fi 

# Get all note files
mapfile -t files < <(find "$NOTES_DIR" -type f -name "*.md")

# Extract just the filenames
choices=()
for file in "${files[@]}"; do
    choices+=("$(basename "$file")")
done

# FZF selection
selected_file=$(printf "%s\n" "${choices[@]}" | fzf --prompt="Select a note: ")

# Open the selected file at the end of the last line
if [ -n "$selected_file" ]; then
    for file in "${files[@]}"; do
        if [[ "$(basename "$file")" == "$selected_file" ]]; then
            nvim +"normal G$" "$file"
            break
        fi
    done
fi
