#!/bin/bash

mkdir -pv ~/.config/termite
cp -v ~/.config/termite ~/termite.bak
ln -fsv $PWD/config ~/.config/termite/config
