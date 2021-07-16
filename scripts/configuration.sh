#!/bin/bash
git config --global user.name "Jacob Reed"
git config --global user.email "jacob.russell.reed@gmail.com"
git config --global core.editor nvim
git config --global credential.helper 'cache timeout=3600000'
git config --global user.name "jacob.russell.reed@gmail.com"
sudo chmod +r /etc/shadow
systemctl --user enable spotify-listener
systemctl --user start spotify-listener
# Set default lightdm greeter to lightdm-webkit2-greeter
sudo sed -i 's/^\(#?greeter\)-session\s*=\s*\(.*\)/greeter-session = lightdm-webkit2-greeter #\1/ #\2g' /etc/lightdm/lightdm.conf
sudo sed -i 's/^webkit_theme\s*=\s*\(.*\)/webkit_theme = glorious #\1/g' /etc/lightdm/lightdm-webkit2-greeter.conf
sudo sed -i's/^debug_mode\s*=\s*\(.*\)/debug_mode = true #\1/g' /etc/lightdm/lightdm-webkit2-greeter.conf

#spicetify
sudo chmod a+wr /var/lib/flatpak -R
spicetify backup apply enable-debtool
spicetify update
