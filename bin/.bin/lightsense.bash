#!/bin/bash
lastlight=0
threshold=130
while true
do
 sleep 10
 light=$(cat /sys/bus/acpi/devices/ACPI0008:00/iio:device0/in_illuminance_raw)
 if ((light > threshold)); then
  if ((lastlight < threshold)); then
   lastlight=$light
   bash ~/.bin/enablelight.bash
  fi
 else
  if ((light < threshold)); then
   if ((lastlight > threshold)); then
    lastlight=$light
    bash ~/.bin/enabledark.bash
   fi
  fi
 fi
done
