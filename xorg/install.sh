#!/bin/bash

cp -v ~/.xinitrc ~/xinitrc.bak
cp -v 00-keyboard.conf /usr/share/X11/xorg.conf/
cp -v 70-synaptics.conf /usr/share/X11/xorg.conf/
ln -ifsv $PWD/xinitrc ~/.xinitrc
#ln -fsv $PWD/xbindkeysrc ~/.xbindkeysrc
