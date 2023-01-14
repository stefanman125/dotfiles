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

# Docker and DOcker Compose
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io
sudo dnf install docker-compose
