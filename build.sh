#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Install packages

rpm-ostree install hyprland xdg-desktop-portal-hyprland kitty neovim zsh ripgrep fzf fd-find

# Symlinks

mkdir -p /var/usrlocal/bin
ln -sf /usr/bin/nvim /var/usrlocal/bin/vi
ln -sf /usr/bin/nvim /var/usrlocal/bin/vim

# Enabling System Units

systemctl enable podman.socket
