! /bin/zsh

cd ../configs

sudo cp -r .config /home/bruno

cd grub
sudo cp grub /etc/default/
sudo cp -r catppuccin-mocha /usr/share/grub/themes

cd ../sddm
sudo cp default.conf /usr/lib/sddm/sddm.conf.d
sudo cp -r catppuccin-mocha /usr/share/sddm/themes

cd ../gtk
sudo python3 install.py mocha mauve

sudo reboot
