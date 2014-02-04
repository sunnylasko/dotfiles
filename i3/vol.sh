#!/bin/bash
MUTE=$(amixer -c 0 get Master | grep off)
if [$MUTE eq ""]
then
	amixer -c 0 get Master | grep Mono | tail -n1 | cut -d\] -f1 | cut -d\[ -f2
else
	echo "MUTE"
fi
