sudo dnf install -y ulauncher

# Start ulauncher to have it populate config before we overwrite
mkdir -p ~/.config/autostart/
cp ~/.local/share/sunhat/configs/ulauncher/ulauncher.desktop ~/.config/autostart/ulauncher.desktop
gtk-launch ulauncher.desktop >/dev/null
sleep 2 # ensure enough time for ulauncher to set defaults
cp ~/.local/share/sunhat/configs/ulauncher/ulauncher.json ~/.config/ulauncher/settings.json
