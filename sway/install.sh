#!/bin/bash

mkdir -pv ~/.config/sway/
ln -ifsv $PWD/config ~/.config/sway/config
yay -S swayshot
pushd ./waybar
./install.sh
popd
