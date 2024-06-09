#/bin/bash
cp $(which akmods) /tmp/akmods
sed -i 's/dnf -y install/dnf -y reinstall/' /tmp/akmods
perl -i -pe 'if (/check_kmod_up2date\(\)/) { $_ .= <>; s/\{\n/{ return 1\n/ }' /tmp/akmods
sudo bash /tmp/akmods
