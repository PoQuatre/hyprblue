#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Install packages

pkgs=(
  # Desktop Environment
  hyprland xdg-desktop-portal-hyprland waybar rofi-wayland

  # Essential Apps
  kitty neovim zsh thunar thunar-volman thunar-archive-plugin

  # CLI Tools
  ripgrep fzf fd-find

  # Programming
  clang make
)

rpm-ostree install "${pkgs[@]}"

# Enabling System Units

systemctl enable podman.socket
