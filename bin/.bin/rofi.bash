#!/bin/bash
if [ "$(gsettings get org.gnome.desktop.interface gtk-theme)" = "'Arc'" ];
then
rofi "$@" -window-format \{t\} -config ~/.config/rofi/arc-light.conf;
else
rofi "$@" -window-format \{t\} -config ~/.config/rofi/arc-dark.conf;
fi
