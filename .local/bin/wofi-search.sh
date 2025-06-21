#!/bin/bash

# A helper function for robust URL encoding using jq
urlencode() {
    jq -sRr @uri <<< "$1"
}

# Format: "prefix" "URL template with %s as a placeholder for the query"
declare -A engines=(
    ["g"]="https://www.google.com/search?q=%s"                # search google
    ["gi"]="https://www.google.com/search?q=%s&udm=2"         # search google images
    ["rg"]="https://www.google.com/search?q=%s+site%%3Areddit.com" # search reddit from google
    ["yt"]="https://www.youtube.com/results?search_query=%s"  # search youtube
)

# Get input from wofi in dmenu mode
input=$(wofi --dmenu --prompt "Search")

# Exit if the user presses Esc or sends no input
if [[ -z "$input" ]]; then
    exit 0
fi

# Read the first word into 'prefix' and the rest of the words into 'query'
read -r prefix query <<< "$input"

# Default to Google search using the entire input string
template="${engines[g]}"
encoded_query=$(urlencode "$input")

# If the prefix is a key in the engines array AND a query exists...
if [[ -n "${engines[$prefix]}" && -n "$query" ]]; then
    # ...then overwrite the defaults with the specified engine and query.
    template="${engines[$prefix]}"
    encoded_query=$(urlencode "$query")
fi

# Safely build the final URL using printf
printf -v url "$template" "$encoded_query"

# Open the final URL in the default browser
xdg-open "$url"

# Give the browser a moment to register the new window/tab
sleep 0.2

# Switch focus to the browser window using its class
hyprctl dispatch focuswindow class:^firefox$
