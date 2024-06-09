pipx install gnome-extensions-cli --system-site-packages

# Turn off Fedora Watermark extension
gnome-extensions disable background-logo@fedorahosted.org

# Install new extensions
gext install allowlockedremotedesktop@kamens.us
gext install app-hider@lynith.dev
gext install appindicatorsupport@rgcjonas.gmail.com
gext install bluetooth-quick-connect@bjarosze.gmail.com
gext install blur-my-shell@aunetx
gext install burn-my-windows@schneegans.github.com
gext install caffeine@patapon.info
gext install clipboard-indicator@tudmotu.com
gext install custom-hot-corners-extended@G-dH.github.com
gext install dash-to-dock@micxgx.gmail.com
gext install emoji-copy@felipeftn
gext install forge@jmmaranan.com
gext install gsconnect@andyholmes.github.io
gext install hass-gshell@geoph9-on-github
gext install user-theme@gnome-shell-extensions.gcampax.github.com
gext install Vitals@CoreCoding.com
gext install weatheroclock@CleoMenezesJr.github.io
gext install wifiqrcode@glerro.pm.me
# Install Hanabi
git clone https://github.com/jeffshee/gnome-ext-hanabi.git ~/.local/share/sunhat/packages/hanabi
cd ~/.local/share/sunhat/packages/hanabi
./run.sh install

# Compile gsettings schemas in order to be able to set them
sudo cp ~/.local/share/gnome-shell/extensions/app-hider/schemas/org.gnome-shell-extension.app-hider.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/appindicatorsupport@rgcjonas.gmail.com/schemas/org.gnome.shell.extensions.appindicator.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/bluetooth-quick-connect@bjarosze.gmail.com/schemas/org.gnome.shell.extensions.bluetooth-quick-connect.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/blur-my-shell@aunetx/schemas/org.gnome.shell.extensions.blur-my-shell.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/burn-my-windows@schneegans.github.com/schemas/org.gnome.shell.extensions.burn-my-windows.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/burn-my-windows@schneegans.github.com/schemas/org.gnome.shell.extensions.burn-my-windows-profile.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/caffeine@patapon.info/schemas/org.gnome.shell.extensions.caffeine.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/clipboard-indicator@tudmotu.com/schemas/org.gnome.shell.extensions.clipboard-indicator.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/custom-hot-corners-extended@G-dH.github.com/schemas/org.gnome.shell.extensions.custom-hot-corners-extended.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com/schemas/org.gnome.shell.extensions.dash-to-dock.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/emoji-copy@felipeftn/schemas/org.gnome.shell.extensions.emoji-copy.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/forge@jmmaranan.com/schemas/org.gnome.shell.extensions.forge.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/gsconnect@andyholmes.github.io/schemas/org.gnome.Shell.Extensions.GSConnect.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/hass-gshell@geoph9-on-github/schemas/org.gnome.shell.extensions.hass-data.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com/schemas/org.gnome.shell.extensions.user-theme.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/Vitals@CoreCoding.com/schemas/org.gnome.shell.extensions.vitals.gschema.xml /usr/share/glib-2.0/schemas/
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
