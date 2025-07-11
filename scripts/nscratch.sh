#!/bin/bash

NOTES_DIR="/media/jayeshc/WORK/Scratchpad"
AUTHOR_NAME="Jayesh Aman Chandekar"

# Ask for notes name
read -rp "Note title: " title

# Get current date 
date_now=$(date "+%d-%m-%Y")
time_now=$(date "+%I:%M %P")

filename=$(echo "$title" | tr ' ' '_' | tr -cd '[:alnum:]_-').md
filepath="$NOTES_DIR/$filename"

if [ ! -f "$filepath" ]; then
    {
        echo "Name: $AUTHOR_NAME"
        echo "Date: $date_now"
        echo "Time: $time_now"
        echo ""
        echo "- "
    } > "$filepath"
fi

nvim +"normal G0f a" "$filepath"
