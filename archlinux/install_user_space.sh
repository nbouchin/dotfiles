#!/bin/bash

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S bitwarden-cli brightnessctl indicator-kdeconnect lenovo-throttling-fix-git s-tui slack-term swayshot ttf-roboto-mono wf-recorder-git yay

pushd ../bash/
./install.sh
popd
pushd ../tmux/
./install.sh
popd
pushd ../neovim/
./install.sh
popd
pushd ../wayland/
./install.sh
popd
pushd ../sway/
./install.sh
popd
pushd ../xterm/
./install.wayland.sh
popd
