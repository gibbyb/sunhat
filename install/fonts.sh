mkdir -p ~/.local/share/fonts

# MS Fonts
sudo rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm

# Nerd Fonts
cd ~/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/CascadiaMono.zip
unzip CascadiaMono.zip -d CascadiaFont
cp CascadiaFont/*.ttf ~/.local/share/fonts
rm -rf CascadiaMono.zip CascadiaFont

cd ~/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/VictorMono.zip
unzip VictorMono.zip -d VictorFont
cp VictorFont/*.ttf ~/.local/share/fonts
rm -rf VictorMono.zip VictorFont

wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraMono.zip
unzip FiraMono.zip -d FiraMono
cp FiraMono/*.otf ~/.local/share/fonts
rm -rf FiraMono.zip FiraMono

wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip -d JetBrainsMono
cp JetBrainsMono/*.ttf ~/.local/share/fonts
rm -rf JetBrainsMono.zip JetBrainsMono

wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Meslo.zip
unzip Meslo.zip -d Meslo
cp Meslo/*.ttf ~/.local/share/fonts
rm -rf Meslo.zip Meslo

wget https://github.com/iaolo/iA-Fonts/archive/refs/heads/master.zip
unzip master.zip -d iaFonts
cp iaFonts/iA-Fonts-master/iA\ Writer\ Mono/Static/iAWriterMonoS-*.ttf ~/.local/share/fonts
rm -rf master.zip iaFonts

fc-cache
cd -
cd ~/.local/share/sunhat

# Set Victor Mono as the default
gsettings set org.gnome.desktop.interface monospace-font-name 'VictorMono Nerd Font 10'
