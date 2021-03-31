xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
if [ -f "${XDG_CONFIG_HOME:-$HOME/.config}/x11/xprofile" ]; then
	. "${XDG_CONFIG_HOME:-$HOME/.config}/x11/xprofile"
else
	. "$HOME/.xprofile"
fi


#exec bspwm

while :; do
	ssh-agent dwm
done


#ssh-agent dwm
