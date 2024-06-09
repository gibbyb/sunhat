mkdir ~/Documents/Configs
cp -r ~/.local/share/sunhat/configs/dotfiles/. ~/Documents/Configs/

espanso service stop
rm -rf ~/.config/espanso
ln -s ~/Documents/Configs/espanso ~/.config/espanso
espanso service start
rm -rf ~/.config/espanso
ln -s ~/Documents/Configs/forge ~/.config/forge
rm -rf ~/.config/kitty
ln -s ~/Documents/Configs/kitty ~/.config/kitty
rm -rf ~/.config/lobster
ln -s ~/Documents/Configs/lobster ~/.config/lobster
rm -rf ~/.config/neomutt
ln -s ~/Documents/Configs/neomutt ~/.config/neomutt
rm -rf ~/.config/nvim
ln -s ~/Documents/Configs/nvim ~/.config/nvim
rm -rf ~/.config/powerline
ln -s ~/Documents/Configs/powerline ~/.config/powerline
rm -rf ~/.config/ranger
ln -s ~/Documents/Configs/ranger ~/.config/ranger
