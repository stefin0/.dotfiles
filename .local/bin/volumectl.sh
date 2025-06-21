#!/bin/bash
# changeVolume

# Arbitrary but unique message tag
msgTag="myvolume"

if [[ "$1" == "toggle" ]]; then
    # Toggle mute
    wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
else
    # Change volume
    wpctl set-volume @DEFAULT_AUDIO_SINK@ "$1"
fi

# Query wpctl for the current volume and whether the sink is muted
volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100)}')
mute=$(wpctl get-mute @DEFAULT_AUDIO_SINK@ | awk '{print $2}')

if [[ "$mute" == "true" ]]; then
    # Show the sound muted notification
    dunstify -a "changeVolume" -u low -i audio-volume-muted -h string:x-dunst-stack-tag:$msgTag "Volume muted"
else
    # Show the volume notification
    dunstify -a "changeVolume" -u low -i audio-volume-high -h string:x-dunst-stack-tag:$msgTag \
    -h int:value:"$volume" "Volume: ${volume}%"
fi
