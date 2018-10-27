#!/bin/bash

GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${RED}Backup old xsessionrc config to ~/oldxsessionrc"${NC}
cp ~/.xinitrc ~/oldxsessionrc
cp 00-keyboard.conf /usr/share/X11/xorg.conf/
cp 70-synaptics.conf /usr/share/X11/xorg.conf/
echo -e "${BLUE}Copy${NC} xsessionrc located at ${RED}~/.xsessionrc${NC}."
ln -fs $PWD/xinitrc ~/.xinitrc
#ln -fs $PWD/xbindkeysrc ~/.xbindkeysrc
echo -e "${GREEN}Installation${NC} done."
