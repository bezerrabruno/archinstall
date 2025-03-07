#! /bin/zsh

sudo pacman -Syy
sudo pacman -Syu

sudo pacman -S wayland wayland-protocols egl-wayland 
sudo pacman -S qt5-wayland qt5-quickcontrols2 qt6-wayland qt6-declarative qt6-svg  
sudo pacman -S hyprland hypaper 
sudo pacman -S xdg-desktop-portal xdg-desktop-portal-hyprland xdg-desktop-portal-gtk xdg-utils

sudo reboot

