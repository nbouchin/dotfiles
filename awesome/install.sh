#!/bin/bash

cp -v ~/.rc.lua ~/oldrc.lua
git clone --recursive https://github.com/lcpz/awesome-copycats.git
mv -bv awesome-copycats/* ~/.config/awesome; rm -rfv awesome-copycats
ln -fsv $PWD/rc.lua ~/.config/awesome/rc.lua
ln -fsv $PWD/wall.png ~/.config/awesome/themes/multicolor/wall.png
