sudo dnf groupupdate -y 'core' 'multimedia' 'sound-and-video' \
    --setop='install_weak_deps=False' \
    --exclude='PackageKit-gstreamer-plugin' \
    --allowerasing && sync
sudo dnf swap -y 'ffmpeg-free' 'ffmpeg' --allowerasing
sudo dnf swap -y mesa-va-drivers mesa-va-drivers-freeworld
sudo dnf group upgrade -y --with-optional Multimedia
sudo dnf config-manager --set-enabled fedora-cisco-openh264
sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} \
    --exclude=gstreamer1-plugins-bad-free-devel
