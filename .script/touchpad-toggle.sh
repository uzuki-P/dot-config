#!/bin/bash

device="DELL07AD:00 06CB:75E3 Touchpad"
state=$(xinput list-props "$device" | grep "Device Enabled" | cut -f3)
echo $state

if [ $state == 1 ]; then
xinput --disable "$device"
else
xinput --enable "$device"
fi
