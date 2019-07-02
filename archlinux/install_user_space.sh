#!/bin/bash

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S bitwarden-cli brightnessctl indicator-kdeconnect lenovo-throttling-fix-git s-tui slack-term swayshot ttf-roboto-mono wf-recorder-git yay
