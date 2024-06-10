xdg-open "$JETBRAINS_TOOLBOX_LINK" > /dev/null 2>&1
read -rp "Once downloaded & in Downloads directory, press Enter to continue..."
tar -xzf ~/Downloads/jetbrains-toolbox-*.tar.gz -C ~/Downloads
rm -f ~/Downloads/jetbrains-toolbox-*.tar.gz
read -rp "Click the application in the downloads folder to open & install JetBrains Toolbox. Press Enter to continue..."
