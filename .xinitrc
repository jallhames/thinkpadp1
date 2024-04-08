#!/bin/sh

# Startup Services
exec ~/.scripts/time.sh &
exec xrdb -merge .Xresources &
exec feh --bg-scale ~/Pictures/Wallpapers/gray.jpg &
exec picom -b &

# Touchpad Settings
exec xinput set-prop "SYNA801D:00 06CB:CEC9 Touchpad" "libinput Tapping Enabled" 1 &
exec xinput set-prop "SYNA801D:00 06CB:CEC9 Touchpad" "libinput Natural Scrolling Enabled" 1 &
exec xinput set-prop "SYNA801D:00 06CB:CEC9 Touchpad" "libinput Accel Speed" 0.15 &
exec xinput set-prop "SYNA801D:00 06CB:CEC9 Touchpad" "libinput Scrolling Pixel Distance" 25 &

# Window Manager
exec dwm
