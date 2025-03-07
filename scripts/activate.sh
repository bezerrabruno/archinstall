#! /bin/zsh

sudo pacman -Syy
sudo pacman -Syu

sudo os-prober
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo systemctl enable bluetooth
sudo systemctl start bluetooth
sudo systemctl enable sddm
sudo systemctl start sddm

