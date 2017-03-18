#!/bin/sh

xrandr -q | awk '/primary/ {printf "%s", "set $primary_display " ; print $1}' > ~/.i3/config
cat ~/.i3/configs/config.{gaps,display,colors,appearance,binds,autostart} >> ~/.i3/config
