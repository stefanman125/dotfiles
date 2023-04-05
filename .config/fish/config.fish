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
# Takes screenshot of desktop, blurs it, and locks screen with it as lock screen
alias lock="scrot /tmp/lock_screen.png -o; convert -scale 10% -blur 0x2 -resize 1000% /tmp/lock_screen.png /tmp/lock_screen.png; i3lock -i /tmp/lock_screen.png -f"
alias pcsleep="lock && systemctl suspend -i"

# Help Commands
alias help-i3="open /home/stefan/Pictures/i3help.png"

# Other
alias cpclip="xclip -sel clip"
alias rm="rm -i"
