#!/bin/bash

# unset FZF_DEFAULT_OPTS

NOTES_DIR="/media/jayeshc/WORK/Scratchpad"

if [ ! -d "$NOTES_DIR" ]; then
	echo "Error: $NOTES_DIR not found. File does not exists."
	exit 1
fi

# Get all markdown files (relative to NOTES_DIR)
mapfile -t files < <(find "$NOTES_DIR" -type f -name "*.md" | sed "s|$NOTES_DIR/||")

if [ ${#files[@]} -eq 0 ]; then
	echo "No notes found in $NOTES_DIR"
	exit 0
fi

# FZF selection with preview
selected_file=$(printf "%s\n" "${files[@]}" |
	fzf --prompt="Select a note: " \
        --height=100% \
		--preview "bat --style=plain --color=always '$NOTES_DIR/{}' || cat '$NOTES_DIR/{}'" \
		--preview-window=right:60%:wrap \
        --bind "ctrl-d:preview-half-page-down,ctrl-u:preview-half-page-up" \
		--header "Enter to open, Ctrl-D/U to scroll preview")

# Open the selected file at the end
if [ -n "$selected_file" ]; then
	nvim +"normal G$" "$NOTES_DIR/$selected_file"
fi
