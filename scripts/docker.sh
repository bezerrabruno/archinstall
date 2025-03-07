#! /bin/zsh

sudo pacman -Syy
sudo pacman -Syu

sudo pacman -S docker docker-compose
sudo usermod -aG docker bruno

sudo reboot
