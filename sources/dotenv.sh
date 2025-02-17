export TOOLS=$(cat ~/.local/share/sunhat/sources/install/tools | tr "\n" " ")
export GH_USERNAME="gibbyb"
export GH_EMAIL="gib@gibbyb.com"
export GH_EDITOR="nvim"
if [ -z "$HOSTNAME" ]; then
  export HOST_NAME="pc.gib"
else
  export HOST_NAME=$HOSTNAME
fi
export JETBRAINS_TOOLBOX_LINK="https://www.jetbrains.com/toolbox-app/download/download-thanks.html?platform=linux"
export UPSCAYL_LINK="https://github.com/upscayl/upscayl/releases/download/v2.11.5/upscayl-2.11.5-linux.rpm"
export LACT_LINK="https://github.com/ilya-zlobintsev/LACT/releases/download/v0.5.4/lact-0.5.4-0.x86_64.fedora-40.rpm"
export JDK_LINK="https://download.oracle.com/java/22/latest/jdk-22_linux-x64_bin.rpm"
export DESKTOP_BACKGROUND="file:///home/gib/Pictures/Wallpapers/gloomyroadcatbg.png"
export HOME_ASSISTANT_URL="https://home.gibbyb.com"
export JUMP_DESKTOP_LINK="https://jumpdesktop.com/downloads/jdwin"
