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
alias lock="i3lock -i /home/user/Pictures/Lock\ Screen/1.png -f"
alias sleep="lock && systemctl suspend -i"


# Multi Monitor
alias clone-monitor="xrandr --fb 2560x1440 --output eDP-1 --mode 1920x1080 --scale-from 2560x1440 --output HDMI-2 --mode 2560x1440 --scale 1x1 --same-as eDP-1"
alias single-monitor-old="xrandr --output eDP-1 --mode 1920x1080 --rate 60 --scale 1x1"
alias single-monitor="xrandr --output eDP-1 --primary --mode 1920x1080 --pos 1920x1080 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-2-1 --off --output DP-2-1-1 --off --output DP-2-2 --off --output DP-2-2-1 --off"
alias triple-monitor-stableish="xrandr --output eDP-1 --primary --mode 1920x1080 --pos 1920x1080 --rotate normal --output DP-2-1-1 --mode 1920x1080 --pos 1920x0 --output DP-2-2-1 --mode 1920x1080 --pos 0x0 --rotate normal"
alias triple-monitor-dev="xrandr --output eDP-1 --primary --mode 1920x1080 --rate 60 --output DP-2-1-1 --mode 1920x1080 --rate 60 --above eDP-1 --output DP-2-2-1 --mode 1920x1080 --rate 60 --left-of DP-2-1-1"

# Help Commands
alias help-i3="open /home/user/Pictures/i3help.png"

# Other
alias cpclip="xclip -sel clip"
