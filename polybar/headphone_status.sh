#!/bin/bash

active_port=$(pactl list sinks | grep -i "Active Port" | awk '{print $3}')

if [[ "$active_port" == *"headphone"* ]] then
    echo "%{F#F0C674}󰋎%{F-}"
else 
    echo ""
fi
