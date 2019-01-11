#!/bin/bash

cp -v ~/.Xresources ~/Xresources.bak
ln -fsv $PWD/Xresources ~/.Xresources
xrdb -merge ~/.Xresources
