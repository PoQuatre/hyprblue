#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Install packages

rpm-ostree uninstall vim
rpm-ostree install hyprland xdg-desktop-portal-hyprland kitty neovim

# Enabling System Units

systemctl enable podman.socket
