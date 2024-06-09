tools=$(cat ./install/tools | tr "\n" " ")
sudo dnf install -y $tools
