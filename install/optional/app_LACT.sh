source ~/.local/share/sunhat/sources/env.sh
sudo dnf install -y $LACT_LINK
sudo systemctl enable --now lactd
