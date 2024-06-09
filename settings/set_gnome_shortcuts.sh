dconf load /org/gnome/desktop/wm/keybindings/ < \
  ../configs/keyboard_shortcuts/shortcuts-wm.txt
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < \
  ../configs/keyboard_shortcuts/shortcuts-media.txt
dconf load /org/gnome/mutter/keybindings/ < \
  ../configs/keyboard_shortcuts/shortcuts-mutter.txt
dconf load /org/gnome/shell/keybindings/ < \
  ../configs/keyboard_shortcuts/shortcuts-shell.txt
dconf load /org/gnome/mutter/wayland/keybindings/ < \
  ../configs/keyboard_shortcuts/shortcuts-wayland.txt
