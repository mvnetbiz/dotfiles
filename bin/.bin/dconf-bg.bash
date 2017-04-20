#!/usr/bin/bash

< <(dconf watch /org/gnome/desktop/background/picture-uri | sed -rn 's|file://(.*)|\1|gp') | 
while read -r line
do
    echo "line is - $line"
done
