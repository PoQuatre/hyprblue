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
  gcr3
  breeze-cursor-theme
  dbus-tools
  hyprshot
  dunst

  # Essential Apps
  kitty
  neovim
  thunar
  thunar-volman
  thunar-archive-plugin
  tuned
  clapper
  imv

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
systemctl enable tuned.service
