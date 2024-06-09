sudo dnf install -y @development-tools gcc-c++ wl-clipboard \
    libxkbcommon-devel dbus-devel wxGTK-devel.x86_64
git clone https://github.com/federico-terzi/espanso ../packages/espanso/
cd ../packages/espanso
cargo install --force cargo-make --version 0.34.0
cargo make --profile release --env NO_X11=true build-binary
sudo mv target/release/espanso /usr/local/bin/espanso
sudo setcap "cap_dac_override+p" $(which espanso)
espanso service register
espanso start
espanso install html-utils-package
espanso install markdown-shortcuts
espanso install misspell-en
