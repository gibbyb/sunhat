wget -P ~/Downloads "$JUMP_DESKTOP_LINK"
wine ~/Downloads/jdwin.exe > /dev/null 2>&1
cp ~/.local/share/sunhat/configs/jump-desktop/jump-desktop.desktop ~/.local/share/applications/jump-desktop.desktop
cp -r ~/.local/share/sunhat/configs/jump-desktop/icon ~/.wine/drive_c/Program\ Files/Phase\ Five\ Systems/Jump\ Desktop/
