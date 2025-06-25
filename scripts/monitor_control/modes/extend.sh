#!/bin/bash

INTERNAL="eDP"
EXTERNAL="HDMI-A-0"

# 1. Arrange displays
xrandr \
  --output "$EXTERNAL" --primary --mode 1920x1080 --pos 0x0 \
  --output "$INTERNAL" --mode 1920x1080 --below "$EXTERNAL"

# 2. Assign workspaces (i3-specific)
# Move workspace 1 to laptop (eDP), rest to external
i3-msg "workspace 1; move workspace to output $INTERNAL"

# You can modify this loop to match your workspace count
for ws in {2..10}; do
  i3-msg "workspace $ws; move workspace to output $EXTERNAL"
done

feh --bg-scale /home/jayeshc/Pictures/peakpx.jpg

sleep 1

# 4. Optional: restart Polybar
# pkill polybar
~/.config/polybar/launch_polybar.sh
