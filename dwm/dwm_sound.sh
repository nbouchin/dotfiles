#!/bin/sh

dwm_sound() {
	SOUND=$(amixer get Master | awk '{split($0,a)} END{print (NF>1?a[NF-1]OFS:"")a[NF]}')
	printf "vol%s" "$SOUND"
}
