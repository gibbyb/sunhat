sudo fwupdmgr get-devices
sudo fwupdmgr refresh --force
sudo fwupdmgr get-updates
sudo fwupdmgr update
sudo dnf groupinstall -y "C Development Tools and Libraries" \
    "Development Tools"
