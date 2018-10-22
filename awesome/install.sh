#!/bin/bash

GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${RED}Backup old rc.lua config to ~/oldrc.lua"${NC}
cp ~/.rc.lua ~/oldrc.lua
mkdir -p ~/.config/awesome/
git clone --recursive https://github.com/lcpz/awesome-copycats.git
mv -bv awesome-copycats/* ~/.config/awesome; rm -rf awesome-copycats
echo -e "${BLUE}Copy${NC} rc.lua located at ${RED}~/.rc.lua${NC}."
ln -fs $PWD/rc.lua ~/.config/awesome/rc.lua
ln -fs $PWD/wall.png ~/.config/awesome/themes/multicolor/wall.png
echo -e "${GREEN}Installation${NC} done."
