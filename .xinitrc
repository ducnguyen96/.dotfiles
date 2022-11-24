dwmblocks &
systemctl --user import-environment DISPLAY &
ibus-daemon & 
xrandr --output DP-4 --brightness .8
xrandr --output HDMI-1 --brightness .8
cd $HOME/.dotfiles && feh --bg-fill wallpaper.png &
picom &
exec dbus-launch dwm
