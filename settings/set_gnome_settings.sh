gsettings set org.gnome.boxes first-run false

gsettings set org.gnome.Connections first-run false

gsettings set org.gnome.desktop.background picture-options 'zoom'
gsettings set org.gnome.desktop.background picture-uri $DESKTOP_BACKGROUND
gsettings set org.gnome.desktop.background picture-uri-dark $DESKTOP_BACKGROUND
gsettings set org.gnome.desktop.background show-desktop-icons false

gsettings set org.gnome.desktop.datetime automatic-timezone true

gsettings set org.gnome.desktop.interface clock-format "12h"
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface cursor-size 16
# Set mouse cursor theme
gsettings set org.gnome.desktop.interface cursor-theme oreo_blue_cursors
gsettings set org.gnome.desktop.interface enable-animations true
gsettings set org.gnome.desktop.interface enable-hot-corners true
gsettings set org.gnome.desktop.interface font-antialiasing "rgba"
gsettings set org.gnome.desktop.interface font-hinting "slight"
# Set GTK3 theme to Adwaita-dark.
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Adwaita'
gsettings set org.gnome.desktop.interface monospace-font-name 'VictorMono Nerd Font 10'
gsettings set org.gnome.desktop.interface text-scaling-factor 0.9

gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'flat'
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll false

gsettings set org.gnome.desktop.peripherals.touchpad accel-profile 'flat'
gsettings set org.gnome.desktop.peripherals.touchpad click-method 'fingers'
gsettings set org.gnome.desktop.peripherals.touchpad disable-while-typing true
gsettings set org.gnome.desktop.peripherals.touchpad edge-scrolling-enabled false
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true

gsettings set org.gnome.desktop.remote-desktop.rdp enable true
gsettings set org.gnome.desktop.remote-desktop.rdp negotiate-port true
gsettings set org.gnome.desktop.remote-desktop.rdp port 3389
gsettings set org.gnome.desktop.remote-desktop.rdp screen-share-mode 'mirror-primary'
gsettings set org.gnome.desktop.remote-desktop.rdp view-only false

gsettings set org.gnome.desktop.remote-desktop.vnc enable true
gsettings set org.gnome.desktop.remote-desktop.vnc negotiate-port true
gsettings set org.gnome.desktop.remote-desktop.vnc port 5900
gsettings set org.gnome.desktop.remote-desktop.vnc screen-share-mode 'mirror-primary'
gsettings set org.gnome.desktop.remote-desktop.vnc view-only false

gsettings set org.gnome.desktop.screensaver lock-delay 300
gsettings set org.gnome.desktop.screensaver picture-options 'zoom'
gsettings set org.gnome.desktop.screensaver picture-uri $DESKTOP_BACKGROUND

gsettings set org.gnome.desktop.session idle-delay 900

gsettings set org.gnome.desktop.wm.keybindings activate-window-menu "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings always-on-top "[]"
gsettings set org.gnome.desktop.wm.keybindings begin-move "[]"
gsettings set org.gnome.desktop.wm.keybindings begin-resize "[]"
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"
gsettings set org.gnome.desktop.wm.keybindings cycle-group "['<Super>grave']"
gsettings set org.gnome.desktop.wm.keybindings cycle-group-backward "['<Shift><Super>grave']"
gsettings set org.gnome.desktop.wm.keybindings cycle-panels "[]"
gsettings set org.gnome.desktop.wm.keybindings cycle-panels-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings cycle-windows "['<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "['<Shift><Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings lower "[]"
gsettings set org.gnome.desktop.wm.keybindings maximize "[]"
gsettings set org.gnome.desktop.wm.keybindings maximize-horizontally "[]"
gsettings set org.gnome.desktop.wm.keybindings maximize-vertically "[]"
gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>x']"
gsettings set org.gnome.desktop.wm.keybindings move-to-center "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-ne "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-nw "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-se "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-sw "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-down "['<Alt>Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-left "['<Alt>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-right "['<Alt>Right']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-up "['<Alt>Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-e "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-n "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-s "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-w "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-11 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-12 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-last "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Shift><Alt>h']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Shift><Alt>l']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "[]"
gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog "['<Super>r']"
gsettings set org.gnome.desktop.wm.keybindings raise "[]"
gsettings set org.gnome.desktop.wm.keybindings raise-or-lower "[]"
gsettings set org.gnome.desktop.wm.keybindings set-spew-mark "[]"
gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Shift><Super>x']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-group "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-group-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "[<Super>space]"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Shift><Super>space']"
gsettings set org.gnome.desktop.wm.keybindings switch-panels "[<Control><Alt>c]"
gsettings set org.gnome.desktop.wm.keybindings switch-panels-backward "[<Shift><Control><Alt>c]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-11 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-12 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Control><Alt>Down']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Alt>h']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Alt>l']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Control><Alt>Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings toggle-above "[]"
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "[]"
gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "[]"
gsettings set org.gnome.desktop.wm.keybindings toggle-on-all-workspaces "[]"
gsettings set org.gnome.desktop.wm.keybindings unmaximize "[]"

# Add minimize button to title bar.
gsettings set org.gnome.desktop.wm.preferences button-layout \
  'appmenu:minimize,close'
gsettings set org.gnome.desktop.wm.preferences action-double-click-titlebar \
  'toggle-maximize'
gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar \
  'minimize'
gsettings set org.gnome.desktop.wm.preferences action-right-click-titlebar \
  'menu'
gsettings set org.gnome.desktop.wm.preferences button-layout \
  'close,minimize:appmenu'
gsettings set org.gnome.desktop.wm.preferences focus-mode 'sloppy'
gsettings set org.gnome.desktop.wm.preferences focus-new-windows 'smart'



gsettings set org.gnome.mutter auto-maximize false
# Enable fractional scaling
gsettings set org.gnome.mutter experimental-features \
  "['scale-monitor-framebuffer', 'variable-refresh-rate']"
gsettings set org.gnome.mutter focus-change-on-pointer-rest true
# Set timeout time to 30 seconds to get rid of annoying popup. 
gsettings set org.gnome.mutter check-alive-timeout 30000

gsettings set org.gnome.mutter.keybindings cancel-input-capture "['<Super><Shift>Escape']"
gsettings set org.gnome.mutter.keybindings toggle-tiled-left "[]"
gsettings set org.gnome.mutter.keybindings toggle-tiled-right "[]"

gsettings set org.gnome.nautilus.icon-view default-zoom-level 'small-plus'
gsettings set org.gnome.nautilus.list-view default-zoom-level 'medium'
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'icon-view'
gsettings set org.gnome.nautilus.preferences default-sort-order 'name'
gsettings set org.gnome.nautilus.preferences search-filter-time-type 'last_modified'

gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-automatic false
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-from 17
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-to 10
gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 3500

dconf load /org/gnome/settings-daemon/plugins/media-keys/ < \
  ~/.local/share/sunhat/configs/keyboard_shortcuts/shortcuts-media.txt

gsettings set org.gnome.settings-daemon.plugins.media-keys calculator "['<Super>c']"
gsettings set org.gnome.settings-daemon.plugins.media-keys control-center "['<Super>i']"
gsettings set org.gnome.settings-daemon.plugins.media-keys email "['<Super>e']"
gsettings set org.gnome.settings-daemon.plugins.media-keys help "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>h']"
gsettings set org.gnome.settings-daemon.plugins.media-keys magnifier "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys magnifier-zoom-in "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys magnifier-zoom-out "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys screenreader "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "['<Super>BackSpace']"
gsettings set org.gnome.settings-daemon.plugins.media-keys search "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys www "['<Super>w']"

gsettings set org.gnome.settings-daemon.plugins.power power-button-action 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 'nothing'
gsettings set org.gnome.shell favorite-apps \
  ['org.gnome.Settings.desktop', 'kitty.desktop', 'org.gnome.Nautilus.desktop',
  'org.gnome.Software.desktop', 'microsoft-edge.desktop',
  'org.mozilla.Thunderbird.desktop', 'app.bluebubbles.BlueBubbles.desktop',
  'com.discordapp.Discord.desktop', 'org.gnome.Connections.desktop',
  'com.moonlight_stream.Moonlight.desktop', 'wine-Programs-Jump Desktop.desktop',
  'virt-manager.desktop', 'com.obsproject.Studio.desktop', 'sh.cider.Cider.desktop',
  'tv.plex.PlexDesktop.desktop', 'steam.desktop', 'org.yuzu_emu.yuzu.desktop',
  'com.mojang.Minecraft.desktop', 'md.obsidian.Obsidian.desktop',
  'code.desktop', 'neovim.desktop']
gsettings set org.gnome.shell last-selected-power-profile 'balanced'
gsettings set org.gnome.shell remember-mount-password true

gsettings set org.gnome.shell.keybindings open-application-menu "['<Alt>grave']"
gsettings set org.gnome.shell.keybindings focus-active-notification "[]"
gsettings set org.gnome.shell.keybindings screenshot "['<Shift>Print']"
gsettings set org.gnome.shell.keybindings screenshot-window "['<Alt>Print']"
gsettings set org.gnome.shell.keybindings shift-overview-down "['<Super><Alt>Down']"
gsettings set org.gnome.shell.keybindings shift-overview-up "['<Super><Alt>Up']"
gsettings set org.gnome.shell.keybindings show-screen-recording-ui "['<Ctrl><Shift>Alt>R']"
gsettings set org.gnome.shell.keybindings show-screenshot-ui "['Print']"
gsettings set org.gnome.shell.keybindings toggle-message-tray "['<Super>v']"
gsettings set org.gnome.shell.keybindings toggle-overview "[]"
gsettings set org.gnome.shell.keybindings toggle-quick-settings "['<Super>s']"

gsettings set org.gnome.shell.weather automatic-location true
gsettings set org.gnome.shell.weather locations \
  [<(uint32 2, <('Biloxi', 'KBIX', true, [(0.53087098663270604, -1.5518885990493889)],
  [(0.53051083794155707, -1.5513412812492557)])>)>]

gsettings set org.gnome.shell.world-clocks locations \
  [<(uint32 2, <('Seattle', 'KBFI', true, [(0.82983133145337307, -2.134775231953554)], 
  [(0.83088509144255718, -2.135097419733472)])>)>, <(uint32 2, <('Biloxi', 'KBIX', true,
  [(0.53087098663270604, -1.5518885990493889)], [(0.53051083794155707, -1.5513412812492557)])>)>]

gsettings set org.gnome.software first-run false

gsettings set org.gnome.Weather locations \
  [<(uint32 2, <('Biloxi', 'KBIX', true, [(0.53087098663270604, -1.5518885990493889)], 
  [(0.53051083794155707, -1.5513412812492557)])>)>]
