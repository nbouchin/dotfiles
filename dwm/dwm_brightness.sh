#!/bin/sh

dwm_brightness() {
	MAX=$(cat /sys/class/backlight/intel_backlight/max_brightness)
	CUR=$(cat /sys/class/backlight/intel_backlight/brightness)
	PER=$(echo "$CUR*100/$MAX" | bc)

	printf "bl[%s%%]" "$PER"
}
