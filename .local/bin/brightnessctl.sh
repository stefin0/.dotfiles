#!/bin/bash
# changeBrightness

# Arbitrary but unique message tag
msgTag="mybrightness"

# Use brightnessctl to adjust brightness based on user input
brightnessctl set "$1"

# Get the current brightness percentage
brightness_percent=$(brightnessctl get | brightnessctl info | grep -oP '\(\K[0-9]+(?=%\))')

# Show a notification
dunstify -a "changeBrightness" -u low -h string:x-dunst-stack-tag:$msgTag \
-h int:value:"$brightness_percent" "Brightness: ${brightness_percent}%"
