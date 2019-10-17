#!/bin/sh

dwm_battery() {
	CAP_BAT0=$(cat /sys/class/power_supply/BAT0/capacity)
	STA_BAT0=$(cat /sys/class/power_supply/BAT0/status)

	CAP_BAT1=$(cat /sys/class/power_supply/BAT1/capacity)
	STA_BAT1=$(cat /sys/class/power_supply/BAT1/status)

	if [ "$STA_BAT1" = "Charging" ]; then
		printf "CH BAT0[%s%%] BAT1[%s%%]" "$CAP_BAT0" "$CAP_BAT1"
	else
		printf "BAT0[%s%%] BAT1[%s%%]" "$CAP_BAT0" "$CAP_BAT1"
	fi
}
