#!/bin/bash

GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${RED}Backup old xsessionrc config to ~/oldxsessionrc"${NC}
cp ~/.xsessionrc ~/oldxsessionrc
echo -e "${BLUE}Copy${NC} xsessionrc located at ${RED}~/.xsessionrc${NC}."
ln -fs $PWD/xsessionrc ~/.xsessionrc
ln -fs $PWD/xbindkeysrc ~/.xbindkeysrc
echo -e "${GREEN}Installation${NC} done."
