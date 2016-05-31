#!/usr/bin/bash

[[ "$1" == "up" ]] && amixer -c 0 sset Master 5%+
[[ "$1" == "down" ]] && amixer -c 0 sset Master 5%-

volnoti-show `amixer -c 0 get Master | grep -E '^\s+Front Left' | cut -c 27-32 | grep -o -P '\d+%'`

exit 0
