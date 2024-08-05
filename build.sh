#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Install packages

rpm-ostree install hyprland xdg-desktop-portal-hyprland kitty neovim

# Symlinks

ln -sf /usr/local/bin/vi /usr/bin/nvim
ln -sf /usr/local/bin/vim /usr/bin/nvim

# Enabling System Units

systemctl enable podman.socket
