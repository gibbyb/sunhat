# Check for argument
if [ -z "$1" ]; then
    echo "No argument supplied. If you have already downloaded the DaVinci Resolve"
    echo " zip file, please provide the path to the file as an argument."
    read -rp "Press Enter to open the download page..."
    xdg-open https://www.blackmagicdesign.com/products/davinciresolve
    read -rp "Once the download is finished, press Enter to continue..."
    read -rp "Path to zip file: " zip_path
    unzip -q "$zip_path" -d ~/Downloads/DaVinci_Resolve
    rm -f "$zip_path"
else
  unzip -q "$1" -d ~/Downloads/DaVinci_Resolve
  rm -f "$1"
fi
if [[ -f ~/Downloads/DaVinci_Resolve ]]; then
  chmod +x ~/Downloads/DaVinci_Resolve/*.run
  sudo SKIP_PACKAGE_CHECK=1 ~/Downloads/DaVinci_Resolve/*.run
  sudo mkdir -p /opt/resolve/libs/disabled-libraries/
  sudo mv /opt/resolve/libs/libglib* /opt/resolve/libs/disabled-libraries
  sudo mv /opt/resolve/libs/libgio* /opt/resolve/libs/disabled-libraries
  sudo mv /opt/resolve/libs/libgmodule* /opt/resolve/libs/disabled-libraries
  rm -rf ~/Downloads/DaVinci_Resolve
  echo "DaVinci Resolve installed successfully!"
else
  echo "Installation failed! Does ~/Downloads/DaVinci_Resolve exist?"
fi

