#!/bin/bash

cat gruvbox | dconf load /org/gnome/terminal/legacy/profiles:/
ln -isv $PWD/DIR_COLORS ~/.dir_colors
