# xinitrc script

# Load custom i3 profile
[[ -f ~./Xresources ]] && xrdb -merge ~/.Xresources

# Launch i3 wm
exec i3
