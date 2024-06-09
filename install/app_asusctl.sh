read -p "Should we set up Asusctl? (Are you using and ASUS Laptop?) (y/N) " roganswer
  if [ "$roganswer" == "y" ]; then
      sudo dnf copr enable lukenukem/asus-linux
      sudo dnf update
      sudo dnf install asusctl supergfxctl
      sudo dnf update --refresh
      sudo systemctl enable --now supergfxd.service
      sudo dnf install asusctl-rog-gui
  fi
