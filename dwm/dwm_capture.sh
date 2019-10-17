#!/bin/sh

dwm_capture() {
	CAPTURE=$(amixer get Capture | awk '{split($0,a)} END{print a[NF]}')
	printf "cap%s" "$CAPTURE"
}
