#! /bin/zsh

sudo pacman -Syy
sudo pacman -Syu

sudo pacman -S sddm kitty waybar rofi thunar nwg-look smartmontools grim slurp libnotify flatpak
sudo pacman -S ttf-firacode-nerd ttf-jetbrains-mono-nerd

sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O-)"

sudo reboot
