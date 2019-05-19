#!/bin/bash

git clone --recursive https://github.com/lcpz/awesome-copycats.git
mkdir -p ~/.config/awesome
mv -ibv awesome-copycats/* ~/.config/awesome; rm -irfv awesome-copycats
ln -isv $PWD/rc.lua ~/.config/awesome/rc.lua
ln -isv $PWD/wall.png ~/.config/awesome/themes/multicolor/wall.png
ln -isv $PWD/theme.lua ~/.config/awesome/themes/multicolor/theme.lua
