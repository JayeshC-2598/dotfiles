#!/bin/bash

# bt_status=$(bluetoothctl show | grep "Powered" | awk '{print $2}')
# if [[ "$bt_status" == "yes" ]]; then
#     connected=$(bluetoothctl info | grep "Name" | awk -F': ' '{print $2}')
#     if [[ -n "$connected" ]]; then
#         echo "$connected"
#     else
#         echo "On"
#     fi
# else
#     echo "Off"
# fi

# Check if Bluetooth is powered ON
bt_powered=$(bluetoothctl show | awk '/Powered:/ {print $2}')
if [[ "$bt_powered" != "yes" ]]; then
    echo ""
    exit 0
fi

# Assume no devices are connected
any_connected=false

# Loop through all paired devices
while read -r mac; do
    is_connected=$(bluetoothctl info "$mac" | awk '/Connected:/ {print $2}')
    if [[ "$is_connected" == "yes" ]]; then
        any_connected=true
        break
    fi
done < <(bluetoothctl devices | awk '{print $2}')

# Show icon only if a device is connected
if $any_connected; then
    echo "%{F#F0C674}"
else
    echo ""
fi
