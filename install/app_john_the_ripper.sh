sudo dnf install -y yasm gmp-devel libpcap-devel bzip2-devel
git clone https://github.com/magnumripper/JohnTheRipper.git ~/.local/share/sunhat/packages/JohnTheRipper/
cd ~/.local/share/sunhat/packages/JohnTheRipper/src
./configure && make
cd ~/.local/share/sunhat
