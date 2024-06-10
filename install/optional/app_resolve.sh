# Check for argument
if [ -z "$1" ]; then
    echo "Usage: $0 <path to DaVinci_Resolve_17.2.2_Linux.run>"
    read -rp "Press Enter to open the download page..."
    xdg-open https://www.blackmagicdesign.com/products/davinciresolve
    read -rp "Once the download is finished, press Enter to continue..."
    read -rp "Path to zip file: " zip_path
    unzip -q "$zip_path" -d ~/Downloads/DaVinci_Resolve
else
  unzip -q "$1" -d ~/Downloads/DaVinci_Resolve
fi

chmod +x ~/Downloads/DaVinci_Resolve/*.run
sudo SKIP_PACKAGE_CHECK=1 ~/Downloads/DaVinci_Resolve/*.run

sudo mkdir -p /opt/resolve/libs/disabled-libraries/
sudo mv /opt/resolve/libs/libglib* /opt/resolve/libs/disabled-libraries
sudo mv /opt/resolve/libs/libgio* /opt/resolve/libs/disabled-libraries
sudo mv /opt/resolve/libs/libgmodule* /opt/resolve/libs/disabled-libraries
