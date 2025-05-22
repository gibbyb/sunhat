#!/bin/bash
# bash <(curl -s https://raw.githubusercontent.com/mylinuxforwork/dotfiles/main/setup-fedora.sh)
hyprconfig=/home/gib/Documents/Configs/hyprland/gulfport/.config
config=/home/gib/Documents/Configs

rm -f ~/.bashrc
ln -s $config/bashrc ~/.bashrc
rm -rf ~/.config/gtk-3.0
ln -s $config/gtk-3.0 ~/.config/gtk-3.0
rm -rf ~/.config/gtk-4.0
ln -s $config/gtk-4.0 ~/.config/gtk-4.0
rm -f ~/.Xresources
ln -s $hyprconfig/Xresources ~/.Xresources
rm -rf ~/.config/ags
ln -s $hyprconfig/ags ~/.config/ags
rm -rf ~/.config/dunst
ln -s $hyprconfig/dunst ~/.config/dunst
rm -rf ~/.config/fastfetch
ln -s $hyprconfig/fastfetch ~/.config/fastfetch
rm -rf ~/.config/hypr
ln -s $hyprconfig/hypr ~/.config/hypr
rm -rf ~/.config/ml4w
ln -s $hyprconfig/ml4w ~/.config/ml4w
rm -rf ~/.config/ml4w-hyprland-settings
ln -s $hyprconfig/ml4w-hyprland-settings ~/.config/ml4w-hyprland-settings
rm -rf ~/.config/nwg-dock-hyprland
ln -s $hyprconfig/nwg-dock-hyprland ~/.config/nwg-dock-hyprland
rm -rf ~/.config/ohmyposh
ln -s $hyprconfig/ohmyposh ~/.config/ohmyposh
rm -rf ~/.config/qt6ct
ln -s $hyprconfig/qt6ct ~/.config/qt6ct
rm -rf ~/.config/rofi
ln -s $hyprconfig/rofi ~/.config/rofi
rm -rf ~/.config/wal
ln -s $hyprconfig/wal ~/.config/wal
rm -rf ~/.config/waybar
ln -s $hyprconfig/waybar ~/.config/waybar
rm -rf ~/.config/waypaper
ln -s $hyprconfig/waypaper ~/.config/waypaper
rm -rf ~/.config/wlogout
ln -s $hyprconfig/wlogout ~/.config/wlogout
rm -rf ~/.config/xsettingsd
ln -s $hyprconfig/xsettingsd ~/.config/xsettingsd
chmod -R +x $hyprconfig
chown -R gib $hyprconfig
