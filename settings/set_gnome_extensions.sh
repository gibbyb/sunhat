pipx install gnome-extensions-cli --system-site-packages

# Turn off Fedora Watermark extension
gnome-extensions disable background-logo@fedorahosted.org

gum confirm "To install GNOME extensions, you will need to accept quite a few prompts. Are you ready to proceed?"

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
cd ~/.local/share/sunhat/packages/hanabi || exit
./run.sh install > /dev/null
echo "Hanabi installed"

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


gsettings set org.gnome.shell.extensions.app-hider hidden-apps \
  ['yelp.desktop', 'org.gnome.Calendar.desktop', 'ranger.desktop', 
  'org.gnome.Weather.desktop', 'org.gnome.clocks.desktop', 
  'java-17-openjdk-17.0.9.0.9-3.fc39.x86_64-jconsole.desktop', 
  'wine-notepad.desktop', 'wine-regedit.desktop', 'wine-wineboot.desktop', 
  'wine-winecfg.desktop', 'wine-winefile.desktop', 'wine-winemine.desktop', 
  'htop.desktop', 'nvim.desktop', 
  'java-21-openjdk-21.0.2.0.13-1.rolling.fc39.x86_64-jconsole.desktop', 
  'wine-winhelp.desktop', 'wine-oleview.desktop', 'wine-uninstaller.desktop', 
  'wine-wordpad.desktop', 'com.prusa3d.PrusaSlicer.GCodeViewer.desktop', 
  'org.torproject.torbrowser-launcher.settings.desktop', 
  'org.libreoffice.LibreOffice.desktop', 'winetricks.desktop', 
  'dosbox-staging.desktop', 'nordvpn.desktop', 'Fall Guys.desktop', 
  'Borderlands 3.desktop', 'Kerbal Space Program.desktop', 
  'Dishonored - Definitive Edition.desktop', 'Cursed to Golf.desktop', 
  'Dishonored® Death of the Outsider™.desktop', 'Palworld.desktop', 
  'waydroid.com.android.inputmethod.latin.desktop', 
  'waydroid.com.android.contacts.desktop', 'waydroid.com.android.gallery3d.desktop', 
  'waydroid.org.lineageos.eleven.desktop', 'waydroid.org.lineageos.recorder.desktop', 
  'waydroid.com.android.deskclock.desktop', 'waydroid.com.android.camera2.desktop', 
  'waydroid.org.lineageos.etar.desktop', 'waydroid.com.android.calculator2.desktop', 
  'qt5-linguist.desktop', 
  'java-22-openjdk-22.0.0.0.36-1.rolling.fc39.x86_64-jconsole.desktop', 'xterm.desktop', 
  'realvnc-vncserver-service.desktop', 'Fallout.desktop', 
  'com.github.alexkdeveloper.desktop-files-creator.desktop', 
  'java-17-openjdk-17.0.10.0.7-3.fc40.x86_64-jconsole.desktop', 
  'java-22-openjdk-22.0.0.0.36-2.rolling.fc40.x86_64-jconsole.desktop', 
  'java-22-openjdk-22.0.1.0.8-1.rolling.fc40.x86_64-jconsole.desktop', 
  'org.gnome.Extensions.desktop', 'Shadows of Doubt.desktop', 'Apex Legends.desktop', 
  'jump-desktop.desktop', 'Proton Hotfix.desktop', 
  'java-17-openjdk-17.0.11.0.9-1.fc40.x86_64-jconsole.desktop', 'gv.desktop']


gsettings set org.gnome.shell.extensions.blur-my-shell.appfolder brightness 0.4
gsettings set org.gnome.shell.extensions.blur-my-shell.appfolder sigma 4
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock blur true
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock brightness 0.4
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock pipeline \
  'pipeline_default_rounded'
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock sigma 17
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock static-blur true
gsettings set org.gnome.shell.extensions.blur-my-shell.lockscreen blur true
gsettings set org.gnome.shell.extensions.blur-my-shell.overview blur true
gsettings set org.gnome.shell.extensions.blur-my-shell.overview pipeline \
  'pipeline_default'
gsettings set org.gnome.shell.extensions.blur-my-shell.panel blur true
gsettings set org.gnome.shell.extensions.blur-my-shell.panel brightness 0.4
gsettings set org.gnome.shell.extensions.blur-my-shell.panel pipeline \
  'pipeline_default_rounded'
gsettings set org.gnome.shell.extensions.blur-my-shell.panel sigma 17
gsettings set org.gnome.shell.extensions.blur-my-shell.panel static-blur true

gsettings set org.gnome.shell.extensions.caffeine countdown-timer 60

gsettings set org.gnome.shell.extensions.custom-hot-corners-extended.misc \
  keyboard-shortcuts ['opacity-up-win <Control>Up', 
  'opacity-down-win <Control>Down', 'make-thumbnail-win <Control>Print']

gsettings set org.gnome.shell.extensions.dash-to-dock animation-time \
  1.3877787807814457e-17
gsettings set org.gnome.shell.extensions.dash-to-dock background-color 'rgb(66,70,90)'
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.9
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'focus-minimize-or-previews'
gsettings set org.gnome.shell.extensions.dash-to-dock custom-background-color true
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-shrink true
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 36
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-dock height-fraction 1
gsettings set org.gnome.shell.extensions.dash-to-dock hide-delay 1
gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide-mode 'FOCUS_APPLICATION_WINDOWS'
gsettings set org.gnome.shell.extensions.dash-to-dock middle-click-action 'minimize'
gsettings set org.gnome.shell.extensions.dash-to-dock multi-monitor true
gsettings set org.gnome.shell.extensions.dash-to-dock running-indicator-dominant-color true
gsettings set org.gnome.shell.extensions.dash-to-dock running-indicator-style 'DOTS'
gsettings set org.gnome.shell.extensions.dash-to-dock scroll-action 'cycle-windows'
gsettings set org.gnome.shell.extensions.dash-to-dock shift-click-action 'previews'
gsettings set org.gnome.shell.extensions.dash-to-dock shift-middle-click-action 'quit'
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-always-in-the-edge false
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'

gsettings set org.gnome.shell.extensions.forge auto-split-enabled true
gsettings set org.gnome.shell.extensions.forge dnd-center-layout 'tabbed'
gsettings set org.gnome.shell.extensions.forge float-always-on-top-enabled true
gsettings set org.gnome.shell.extensions.forge focus-border-color 'rgba(236,94,94,0.9)'
gsettings set org.gnome.shell.extensions.forge focus-border-size 3
gsettings set org.gnome.shell.extensions.forge focus-border-toggle true
gsettings set org.gnome.shell.extensions.forge move-pointer-focus-enabled false
gsettings set org.gnome.shell.extensions.forge preview-hint-enabled true
gsettings set org.gnome.shell.extensions.forge primary-layout-mode 'tiling'
gsettings set org.gnome.shell.extensions.forge quick-settings-enabled trus
gsettings set org.gnome.shell.extensions.forge resize-amount 15
gsettings set org.gnome.shell.extensions.forge showtab-decoration-enabled true
gsettings set org.gnome.shell.extensions.forge split-border-toggle true
gsettings set org.gnome.shell.extensions.forge stacked-tiling-mode-enabled false
gsettings set org.gnome.shell.extensions.forge tabbed-tiling-mode-enabled false
gsettings set org.gnome.shell.extensions.forge tiling-mode-enabled true
gsettings set org.gnome.shell.extensions.forge window-gap-size 10
gsettings set org.gnome.shell.extensions.forge.keybindings con-split-horizontal "['<Control><Super>z']"
gsettings set org.gnome.shell.extensions.forge.keybindings con-split-layout-toggle "['<Control><Super>x']" 
gsettings set org.gnome.shell.extensions.forge.keybindings con-split-vertical ['<Control><Super>v']
gsettings set org.gnome.shell.extensions.forge.keybindings con-stacked-layout-toggle "[['<Control><Super>s']]"
gsettings set org.gnome.shell.extensions.forge.keybindings con-tabbed-layout-toggle "[]"
gsettings set org.gnome.shell.extensions.forge.keybindings con-tabbed-showtab-decoration-toggle "[]"
gsettings set org.gnome.shell.extensions.forge.keybindings focus-border-toggle "[]"
gsettings set org.gnome.shell.extensions.forge.keybindings mod-mask-mouse-tile 'None'
gsettings set org.gnome.shell.extensions.forge.keybindings prefs-open "[]"
gsettings set org.gnome.shell.extensions.forge.keybindings prefs-tiling-toggle "[]"
gsettings set org.gnome.shell.extensions.forge.keybindings window-focus-down "['<Super>j']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-focus-left "['<Super>h']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-focus-right "['<Super>l']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-focus-up "['<Super>k']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-gap-size-decrease "[]"
gsettings set org.gnome.shell.extensions.forge.keybindings window-gap-size-increase "[]"
gsettings set org.gnome.shell.extensions.forge.keybindings window-move-down "['<Shift><Super>j']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-move-left "['<Shift><Super>h']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-move-right "['<Shift><Super>l']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-move-up "['<Shift><Super>k']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-resize-bottom-decrease "['<Shift><Super>n']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-resize-bottom-increase "['<Shift><Super>u']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-resize-left-decrease "['<Shift><Super>b']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-resize-left-increase "['<Shift><Super>y']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-resize-right-decrease "['<Shift><Super>m']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-resize-right-increase "['<Shift><Super>o']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-resize-top-decrease "['<Shift><Super>p']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-resize-top-increase "['<Shift><Super>i']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-snap-center "[]"
gsettings set org.gnome.shell.extensions.forge.keybindings window-snap-one-third-left "['<Control><Super>b']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-snap-one-third-right "['<Control><Super>m']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-snap-two-third-left "['<Control><Super>y']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-snap-two-third-right "['<Control><Super>o']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-swap-down "['<Control><Super>j']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-swap-last-active "[]"
gsettings set org.gnome.shell.extensions.forge.keybindings window-swap-left "['<Control><Super>h']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-swap-right "['<Control><Super>l']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-swap-up "['<Control><Super>k']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-toggle-always-float "['<Shift><Control><Super>c']"
gsettings set org.gnome.shell.extensions.forge.keybindings window-toggle-float "['<Control><Super>c']"
gsettings set org.gnome.shell.extensions.forge.keybindings workspace-active-tile-toggle "[]"

gsettings set org.gnome.shell.extensions.hass-data hass-enabled-enabled-entities \
  ['switch.3d_printer', 'light.bathroom_lights', 'light.hall_light', 
  'light.kitchen_lights', 'light.stove_light']
gsettings set org.gnome.shell.extensions.hass-data hass-enabled-runnables \
  ['scene.all_lights_off_duplicate', 'scene.all_lights_on', 'scene.bed_time_with_tv_on',
  'scene.daytime_lights', 'scene.dim_lights', 'scene.watching_tv']
gsettings set org.gnome.shell.extensions.hass-data hass-url $HOME_ASSISTANT_URL
gsettings set org.gnome.shell.extensions.hass-data show-notifications true

gsettings set org.gnome.shell.extensions.vitals hot-sensors \
  ['_processor_usage_', '_memory_usage_', '_gpu#1_utilization_']
gsettings set org.gnome.shell.extensions.vitals show-gpu true
