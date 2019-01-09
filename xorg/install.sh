#!/bin/bash

cp -v ~/.xinitrc ~/oldxsessionrc
cp -v 00-keyboard.conf /usr/share/X11/xorg.conf/
cp -v 70-synaptics.conf /usr/share/X11/xorg.conf/
ln -fsv $PWD/xinitrc ~/.xinitrc
#ln -fsv $PWD/xbindkeysrc ~/.xbindkeysrc
