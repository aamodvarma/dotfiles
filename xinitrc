
setmonitors
nvidia-st
xrandr --setprovideroutputsource modesetting NVIDIA-0
dunst &
picom --experimental-backends &
keymap.sh
slstatu &
nitrogen --restore
xrdb ~/.Xresources &

exec dwm > ~/.dwm.log
