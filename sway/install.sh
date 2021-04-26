#!/bin/bash

mkdir -pv ~/.config/sway/
ln -ifsv $PWD/config ~/.config/sway/config
pushd ./waybar
./install.sh
popd
