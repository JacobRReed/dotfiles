#!/bin/bash
# Sym link all dotfiles

echo -n "Creating empty directories for dotfiles..."
mkdir -p ~/.config
echo -n "Done creating directories"

echo -n "Linking dotfiles...\n"
ln -sf ~/dotfiles/base/.xinitrc ~/.xinitrc
ln -sf ~/dotfiles/i3 ~/.i3
ln -sf ~/dotfiles/i3 ~/.config/i3
ln -sf ~/dotfiles/neofetch ~/.config/neofetch
ln -sf ~/dotfiles/polybar ~/.config/polybar
ln -sf ~/dotfiles/rofi ~/.config/rofi
ln -sf ~/dotfiles/compton ~/.config/compton
ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/spicetify ~/.config/spicetify
ln -sf ~/dotfiles/alacritty ~/.config/alacritty
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/dotfiles/kitty ~/.config/kitty
ln -sf ~/dotfiles/dunst ~/.config/dunst
ln -sf ~/dotfiles/BetterDiscord ~/.config/BetterDiscord
mkdir -p ~/.local/share/gtksourceview-3.0/styles && ln -sf ~/dotfiles/mousepad/dracula.xml ~/.local/share/gtksourceview-3.0/styles/dracula.xml
ln -sf ~/dotfiles/picom ~/.config/picom

echo -n "Done linking dotfiles\n"

