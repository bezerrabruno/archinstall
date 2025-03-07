#! /bin/zsh

sudo pacman -Syy
sudo pacman -Syu

sudo pacman -S man-db make dkms fuse unzip os-prober pamixer bluez bluez-utils fastfetch btop speedtest-cli

sudo reboot
