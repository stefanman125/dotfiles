################################
#
# Additional Notes:
#
# - Goes into ~/.config/fish/config.fish
#
##########################################


if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Computer Control
alias lock="scrot /tmp/lock_screen.png -o; convert -scale 10% -blur 0x2 -resize 1000% /tmp/lock_screen.png /tmp/lock_screen.png; i3lock -i /tmp/lock_screen.png -f"
alias pcsleep="lock && systemctl suspend -i"

# Multi Monitor
alias clone-monitor-1440p="xrandr --fb 2560x1440 --output eDP-1 --mode 1920x1080 --scale-from 2560x1440 --output HDMI-2 --mode 2560x1440 --scale 1x1 --same-as eDP-1; pkill polybar; bash ~/.config/polybar/launch.sh --forest 2>/dev/null"
alias single-monitor="xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x1080 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off; ; pkill polybar; bash ~/.config/polybar/launch.sh --forest 2>/dev/null"
alias clone-monitor-1080p="xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x1080 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --mode 1920x1080 --pos 0x0 --rotate normal; pkill polybar; bash /home/stefan/.config/polybar/launch.sh --forest 2>/dev/null"

# Help Commands
alias help-i3="open /home/stefan/Pictures/i3help.png"

# Other
alias cpclip="xclip -sel clip"
