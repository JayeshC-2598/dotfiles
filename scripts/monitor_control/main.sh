#!/bin/bash

SCRIPT_DIR="$(dirname "$(realpath "$0")")"
MODE_DIR="$SCRIPT_DIR/modes"
HDMI_PORT="HDMI-A-0" # Change if different (check xrandr)

# Check HDMI connection status
HDMI_STATUS=$(xrandr | grep "^$HDMI_PORT connected")

if [[ -n "$HDMI_STATUS" ]]; then
    # HDMI is connected
    options=(
        "Mirror Display"
        "Extend Display"
        "External Only (Turn off laptop screen)"
        "Laptop Only (Turn off external monitor)"
    )
else
    # HDMI is not connected
    echo "⚠️  External monitor ($HDMI_PORT) is not connected."
    options=(
        "Laptop Only (Turn off external monitor)"
    )
fi

# Use fzf for selection
choice=$(printf '%s\n' "${options[@]}" | fzf --prompt="Select display mode: ")

# Match choice to appropriate script
case "$choice" in
"Mirror Display")
    bash "$MODE_DIR/mirror.sh"
    ;;
"Extend Display")
    bash "$MODE_DIR/extend.sh"
    ;;
"External Only (Turn off laptop screen)")
    bash "$MODE_DIR/external_only.sh"
    ;;
"Laptop Only (Turn off external monitor)")
    bash "$MODE_DIR/laptop_only.sh"
    ;;
*)
    echo "❌ No valid option selected."
    exit 1
    ;;
esac

# Optional: refresh i3 to apply changes cleanly
# i3-msg restart
