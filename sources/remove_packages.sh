sudo dnf remove -y gnome-contacts gnome-tour \
    gnome-maps libreoffice-calc libreoffice-writer \
    libreoffice-impress totem

sudo mv /usr/bin/gnome-terminal /usr/bin/gnome-terminal.NOPE
sudo cp /usr/bin/kitty /usr/bin/gnome-terminal
