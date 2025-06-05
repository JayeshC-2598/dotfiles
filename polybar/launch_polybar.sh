# Kill all existing polybar instances
killall -q polybar

# Wait until they are fully shut down
while pgrep -x polybar >/dev/null; do sleep 0.5; done

# Launch Polybar on each connected monitor
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload &
  done
else
  polybar --reload &
fi
