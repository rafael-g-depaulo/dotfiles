#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# launch a polybar in each monitor, if xrandr allowsa us to get a list of monitors
if type "xrandr" &>/dev/null; then
	# monitor_list=$(xrandr --query | grep connected | grep -v disconnected | awk '{ print $1 }')
	for monitor in $(xrandr --query | grep connected | grep -v disconnected | awk '{ print $1 }'); do
		# MONITOR=$monitor $POLYBAR_CMD
		MONITOR=$monitor polybar --reload -c $HOME/.config/polybar/config.ini default 3>&1 | tee -a /tmp/polybar.log &
		disown
	done
else
	polybar --reload -c $HOME/.config/polybar/config.ini default 3>&1 | tee -a /tmp/polybar.log &
fi

echo "---" | tee -a /tmp/polybar.log
