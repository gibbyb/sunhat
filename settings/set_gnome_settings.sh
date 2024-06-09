# Add minimize button to title bar.
gsettings set org.gnome.desktop.wm.preferences button-layout \
    'appmenu:minimize,close'
# Set GTK3 theme to Adwaita-dark.
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
# Set mouse cursor theme
gsettings set org.gnome.desktop.interface cursor-theme oreo_blue_cursors
# Set timeout time to 30 seconds to get rid of annoying popup. 
gsettings set org.gnome.mutter check-alive-timeout 30000
# Enable fractional scaling
gsettings set org.gnome.mutter experimental-features \
    "['scale-monitor-framebuffer']"
