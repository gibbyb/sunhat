flatpak remote-add --if-not-exists gnome-nightly \
    https://nightly.gnome.org/gnome-nightly.flatpakrepo
flatpak remote-add --if-not-exists gradience-nightly \
    https://gradienceteam.github.io/Gradience/index.flatpakrepo
sudo flatpak install gradience-nightly \
    com.github.GradienceTeam.Gradience.Devel
