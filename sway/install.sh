#!/bin/bash

mkdir -pv ~/.config/sway/
cp -v ~/.config/sway/config ~/config.sway.bak
ln -fsv $PWD/config ~/.config/sway/config
