#!/bin/bash

mkdir -pv ~/.config/sway/
cp -v ~/.config/sway/config ~/oldswayconfig
ln -fsv $PWD/config ~/.config/sway/config
