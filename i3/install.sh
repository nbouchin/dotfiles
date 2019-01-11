#!/bin/bash

mkdir -pv ~/.config/i3/
cp -v ~/.config/i3/config ~/config.i3.bak
ln -fsv $PWD/config ~/.config/i3/config
