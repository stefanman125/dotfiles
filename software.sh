# Free and non-free Fusion repos

dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Flameshot
dnf install flameshot

# Polybar
dnf install polybar

# i3lock
dnf install i3lock

# vim
dnf install vim

# VLC Media Player
dnf install vlc

# Feh (Background image)
dnf install feh

# Nvidia drivers
dnf install akmod-nvidia
dnf install xorg-x11-drv-nvidia-cuda

# Desktop Screenshot tool for i3config lock screen
dnf install scrot
