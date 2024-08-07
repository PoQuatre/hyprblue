#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Install packages

pkgs=(
  # Desktop Environment
  hyprland
  xdg-desktop-portal-hyprland
  waybar
  rofi-wayland
  swww
  polkit-gnome
  pinentry-gnome3
  breeze-cursor-theme

  # Essential Apps
  kitty
  neovim
  thunar
  thunar-volman
  thunar-archive-plugin
  tuned

  # CLI Tools
  zsh
  ripgrep
  fzf
  fd-find
  zoxide
  cliphist
  gh
  NetworkManager-tui
)

rpm-ostree install "${pkgs[@]}"

# Enabling System Units

systemctl enable podman.socket
