#!/usr/bin/env bash

CONFIG="$HOME/.config/wofi/config"
STYLE="$HOME/.config/wofi/mocha.css"

if [[ ! $(pidof wofi) ]]; then
    wofi --conf "${CONFIG}" --style "${STYLE}"
else
    pkill wofi
fi
