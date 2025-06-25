#!/bin/bash

INTERNAL="eDP"
EXTERNAL="HDMI-A-0"

xrandr --output "$EXTERNAL" --mode 1920x1080 --dpi 96 --same-as "$INTERNAL" --primary
