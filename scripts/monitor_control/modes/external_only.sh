#!/bin/bash

INTERNAL="eDP"
EXTERNAL="HDMI-A-0"

# xrandr --output "$EXTERNAL" --primary --mode 1920x1080 --pos 0x0 \
# 	--output "$INTERNAL" --off

xrandr --dpi 96 --fb 1920x1080 \
	--output "$INTERNAL" --off \
    --output "$EXTERNAL" --primary --mode 1920x1080 --scale 1x1 --panning 1920x1080
