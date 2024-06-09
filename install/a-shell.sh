mkdir ~/Documents/Configs

[ -f "~/.bashrc" ] && rm ~/.bashrc
cp ~/.local/share/sunhat/configs/rc/bashrc ~/Documents/Configs/bashrc
ln -s ~/Documents/Configs/bashrc ~/.bashrc
source ~/.bashrc

[ -f "~/.inputrc" ] && rm ~/.inputrc
cp ~/.local/share/sunhat/configs/rc/inputrc ~/Documents/Configs/inputrc
ln -s ~/Documents/Configs/inputrc ~/.inputrc
