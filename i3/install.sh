#!/bin/bash

mkdir -pv ~/.config/i3/
cp -v ~/.config/i3/config ~/oldi3config
ln -fsv $PWD/config ~/.config/i3/config
