#! /bin/zsh

sudo pacman -Syy
sudo pacman -Syu

sudo pacman -S nvidia nvidia-utils
sudo pacman -S xorg-server xorg-xinit xorg-xwayland

sudo reboot
