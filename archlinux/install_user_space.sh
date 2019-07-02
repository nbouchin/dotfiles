#!/bin/bash

#git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
#yay -S bitwarden-cli brightnessctl indicator-kdeconnect lenovo-throttling-fix-git s-tui slack-term swayshot ttf-roboto-mono wf-recorder-git yay

bash -c ../bash/install.sh
bash -c ../tmux/install.sh
bash -c ../neovim/install.sh
bash -c ../wayland/install.sh
bash -c ../sway/install.sh
bash -c ../xterm/install.wayland.sh
