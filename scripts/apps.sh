#!/bin/bash

# Pacman Apps
sudo pacman -Syy
sudo pacman -S --noconfirm neofetch conky polybar rofi neovim discord i3lock compton xclip arandr imagemagick \
feh dmenu lib32-gnutls lib32-libldap lib32-libgpg-error lib32-sqlite lib32-libpulse lib32-alsa-plugins gimp \
awesome-terminal-fonts lynx alacritty dunst lutris nvidia-dkms nvidia-utils lib32-nvidia-utils \
vulkan-icd-loader lib32-vulkan-icd-loader lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader \ 
lib32-vulkan-icd-loader wine-staging giflib lib32-giflib libpng lib32-libpng libldap \
lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils \
libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib \
lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite \
libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader \
lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs \
lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader lib32-gnutls lib32-libldap \
lib32-libgpg-error lib32-sqlite lib32-libpulse lib32-alsa-plugins samba hidapi lxappearance \
lightdm-webkit2-greeter xdotool wmctrl xfce4-goodies flatpak playerctl gucharmap xorg-xinput \


# AUR packages
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si && cd .. && rm -rf yay
yay --save --answerclean All --answerdiff All
yay --save --nocleanmenu --nodiffmenu
yay -S nerd-fonts-complete google-chrome spicetify-cli i3-gaps ttf-material-design-icons \
betterdiscordctl hacked-aio-righty lightdm-webkit2-theme-glorious zscroll zenmap ffmpeg-compat-57 \
backintime

# Snaps
sudo snap install netflix-viewer

# Nvidia Drivers
sudo mhwd -a pci nonfree 0300

# vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# spicetify
sudo chmod a+wr /var/lib/flatpak -R
spicetify backup apply enable-devtool
spicetify update

# BetterDiscord
betterdiscordctl install

sudo pacman -S $(ls /boot | awk -F "-" '/^linux/ { print $1"-headers" }')
