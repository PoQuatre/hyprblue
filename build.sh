#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Install packages

rpm-ostree install hyprland xdg-desktop-portal-hyprland kitty neovim zsh ripgrep fzf fd-find

# Enabling System Units

systemctl enable podman.socket
