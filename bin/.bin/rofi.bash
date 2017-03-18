#!/bin/bash
if [ "$(gsettings get org.gnome.desktop.interface gtk-theme)" = "'Arc'" ];
then
rofi -show drun -sidebar-mode -config ~/.config/rofi/arc-light.conf;
else
rofi -show drun -sidebar-mode -config ~/.config/rofi/arc-dark.conf;
fi
