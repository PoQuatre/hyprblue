#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Install packages

rpm-ostree install hyprland xdg-desktop-portal-hyprland kitty

rpm-ostree override remove vim --install neovim

# Enabling System Units

systemctl enable podman.socket
