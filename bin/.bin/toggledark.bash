#!/bin/bash
bash ~/.bin/fehscrn.bash &
sleep .3
if [ "$(gsettings get org.gnome.desktop.interface gtk-theme)" = "'Arc'" ]
then
gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark"
else
gsettings set org.gnome.desktop.interface gtk-theme "Arc"
fi

