#!/bin/sh

paru -S lightdm lightdm-webkit2-greeter lightdm-webkit-theme-aether \
qtile kitty rofi feh ttf-dejavu ttf-liberation noto-fonts pulseaudio \
pavucontrol pamixer brightnessctl arandr udiskie ntfs-3g \
network-manager-applet volumeicon cbatticon thunar ranger bat lsd \
geeqie vlc brave-bin visual-studio-code-bin nvim --needed

git clone https://github.com/antoniosarosi/dotfiles.git
cp -r dotfiles/.config/qtile ~/.config

# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &
