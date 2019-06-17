#!/bin/bash

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
ln -isv $PWD/config.fish ~/.config/fish/config.fish
fisher add decors/fish-colored-man
fisher add jethrokuan/z
