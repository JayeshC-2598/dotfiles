# Kill all existing polybar instances
# killall -q polybar
#
# # Wait until they are fully shut down
# while pgrep -x polybar >/dev/null; do sleep 0.5; done
#
# # Launch Polybar on each connected monitor
# if type "xrandr"; then
#   for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#     MONITOR=$m polybar --reload &
#   done
# else
#   polybar --reload &
# fi

# Kill existing bars
killall -q polybar

# Wait for termination
while pgrep -x polybar >/dev/null; do sleep 0.5; done

# Launch only on primary monitor
PRIMARY=$(xrandr --query | awk '/ connected primary/ { print $1 }')

if [ -n "$PRIMARY" ]; then
  MONITOR=$PRIMARY polybar --reload &
else
  # Fallback: launch on first connected monitor
  FALLBACK=$(xrandr --query | awk '/ connected/ { print $1; exit }')
  MONITOR=$FALLBACK polybar --reload &
fi
