#!/bin/sh

# Get the current active_opacity value, looking for either an int or a float
CURRENT_OPACITY=$(hyprctl getoption decoration:active_opacity | awk '/int|float/ {print $2}')

if [ "$CURRENT_OPACITY" = "1.000000" ]; then
    # If value is "1.000000", windows are opaque. Make them transparent.
    hyprctl --batch "keyword decoration:active_opacity 0.9; keyword decoration:inactive_opacity 0.6"
else
    # For any other value (e.g., "0.900000" or empty), make windows opaque.
    hyprctl --batch "keyword decoration:active_opacity 1.0; keyword decoration:inactive_opacity 1.0"
fi
