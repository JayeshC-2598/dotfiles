#!/bin/bash

status=$(bluetoothctl show | grep "Powered" | awk '{print $2}')
if [[ "$status" == "yes" ]]; then 
    bluetoothctl power off
else 
    bluetoothctl power on
fi

# Wait 0.5 sec for the state to settle
sleep 0.5
