[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/sunhat/configs/rc/bashrc ~/.bashrc
source ~/.bashrc

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
cp ~/.local/share/sunhat/configs/rc/inputrc ~/.inputrc
