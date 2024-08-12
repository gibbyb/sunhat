sudo dnf install -y akmod-nvidia xorg-x11-drv-nvidia-cuda
echo -e "\nRemove the duplicate lines below from grub:"
echo -e "\t\"rd.driver.blacklist=nouveau,"
echo -e "\tmodprobe.blacklist=nouveau,"
echo -e "\tnvidia-drm.modeset=1\"\n"
echo -e "\n Save the file & close nvim to continue.\n"
kitty -1 -e bash -c "sudoedit /etc/default/grub"
sudo grub2-mkconfig -o /etc/grub2-efi.cfg
sudo systemctl enable nvidia-hibernate.service nvidia-suspend.service \
  nvidia-resume.service nvidia-powerd.service
