#!/bin/bash

pacman -S otf-font-awesome
mkdir -pv ~/.config/waybar/
ln -ifsv $PWD/config ~/.config/waybar/config
ln -ifsv $PWD/style.css ~/.config/waybar/style.css
