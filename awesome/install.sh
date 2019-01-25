#!/bin/bash

git clone --recursive https://github.com/lcpz/awesome-copycats.git
mv -ibv awesome-copycats/* ~/.config/awesome; rm -irfv awesome-copycats
ln -isv $PWD/rc.lua ~/.config/awesome/rc.lua
ln -isv $PWD/wall.png ~/.config/awesome/themes/multicolor/wall.png
