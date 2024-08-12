# Install Zoxide so it doesnt prompt us to when we source bashrc
sudo dnf install -y zoxide
# Make Directory for all Dotfiles so you can sync them with Nextcloud.
mkdir ~/Documents/Configs

# Set up Bash Config and Source it ASAP.
[ -f "$HOME/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/sunhat/configs/rc/bashrc ~/Documents/Configs/bashrc
ln -s ~/Documents/Configs/bashrc ~/.bashrc
source ~/.bashrc

# Copy all Dotfiles to the Configs Directory.
cp -r ~/.local/share/sunhat/configs/dotfiles/. ~/Documents/Configs/

# Remove old dotfiles if they exist & create symlinks to the new dotfiles.
rm -rf ~/.config/espanso
ln -s ~/Documents/Configs/espanso ~/.config/espanso
rm -rf ~/.config/forge
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

# Copy any additional files such as Wallpapers,
# Icons, .desktop files, & Nautilus Extensions
cp -r ~/.local/share/sunhat/configs/copy/home/. ~/
sudo cp -r ~/.local/share/sunhat/configs/copy/root/. /
