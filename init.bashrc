#!/bin/bash

ln -sf $HOME/dotfiles/nvim ~/.config
ln -sf $HOME/dotfiles/foot ~/.config
ln -sf $HOME/dotfiles/fish ~/.config
ln -sf $HOME/dotfiles/fish/starship.toml ~/.config
ln -sf $HOME/dotfiles/rofi ~/.config
ln -sf $HOME/dotfiles/sway ~/.config
ln -sf $HOME/dotfiles/swaylock ~/.config
ln -sf $HOME/dotfiles/waybar ~/.config
ln -sf $HOME/dotfiles/yazi ~/.config
ln -sf $HOME/dotfiles/code/settings.json ~/.config/Code/User/
ln -sf $HOME/dotfiles/code/keybindings.json ~/.config/Code/User/
ln -sf $HOME/dotfiles/code/snipets.code-snippets ~/.config/Code/User/snippets
ln -sf $HOME/dotfiles/xfce4/helpers.rc ~/.config/xfce4/
ln -sf $HOME/dotfiles/dunst ~/.config

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
