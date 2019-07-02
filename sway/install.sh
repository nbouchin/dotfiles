#!/bin/bash

mkdir -pv ~/.config/sway/
ln -ifsv $PWD/config ~/.config/sway/config
yay -S swayshot
bash -c ./waybar/install.sh
