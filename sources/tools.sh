tools=$(cat ~/.local/share/sunhat/sources/install/tools | tr "\n" " ")
sudo dnf install -y $tools
