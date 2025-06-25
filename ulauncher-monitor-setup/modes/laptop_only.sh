#!/bin/bash

INTERNAL="eDP"
EXTERNAL="HDMI-A-0"

xrandr --output "$INTERNAL" --primary --mode 1920x1080 --pos 0x0 \
	--output "$EXTERNAL" --off
