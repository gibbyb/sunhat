sudo dnf install -y ulauncher
gtk-launch ulauncher.desktop >/dev/null 2>&1
sleep 2 # ensure enough time for ulauncher to set defaults
cp ~/.local/share/sunhat/configs/ulauncher/ulauncher.json ~/.config/ulauncher/settings.json
