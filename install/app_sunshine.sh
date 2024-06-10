sudo dnf copr enable matte-schwartz/sunshine -y
sudo dnf update -y --refresh
sudo dnf install -y sunshine
echo 'KERNEL=="uinput", SUBSYSTEM=="misc", OPTIONS+="static_node=uinput", TAG+="uaccess"' | \
sudo tee /etc/udev/rules.d/60-sunshine.rules
sudo udevadm control --reload-rules
sudo udevadm trigger
sudo modprobe uinput
sudo setcap cap_sys_admin+p $(readlink -f $(which sunshine))
cp ~/.local/share/sunhat/configs/sunshine/sunshine.service ~/.config/systemd/user/sunshine.service
systemctl --user enable --now sunshine
