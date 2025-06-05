#!/bin/bash

bt_status=$(bluetoothctl show | grep "Powered" | awk '{print $2}')
if [[ "$bt_status" == "yes" ]]; then
    connected=$(bluetoothctl info | grep "Name" | awk -F': ' '{print $2}')
    if [[ -n "$connected" ]]; then
        echo "$connected"
    else
        echo "On"
    fi
else
    echo "Off"
fi

