#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

LOG_LEVEL="warning"
LOG_FILE="$HOME/logs/polybar.log"
# MAIN_SCREEN="DisplayPort-2"
MAIN_SCREEN="HDMI-A-0"
echo "---------------" >>"$LOG_FILE"

# launch a polybar in each monitor, if xrandr allowsa us to get a list of monitors
if type "xrandr" &>/dev/null; then
	# monitor_list=$(xrandr --query | grep connected | grep -v disconnected | awk '{ print $1 }')
	for monitor in $(xrandr --query | grep connected | grep -v disconnected | tac | awk '{ print $1 }'); do
		# MONITOR=$monitor $POLYBAR_CMD

		BAR_TO_USE="sub"
		if [[ "$monitor" = "$MAIN_SCREEN" ]]; then
			BAR_TO_USE="main"
		fi

		MONITOR=$monitor polybar --reload -l $LOG_LEVEL -c $HOME/.config/polybar/config.ini "$BAR_TO_USE" &>>"$LOG_FILE" &
		disown
	done
else
	polybar --reload -l $LOG_LEVEL -c $HOME/.config/polybar/config.ini default 3>&1 | tee -a "$LOG_FILE" &
fi
