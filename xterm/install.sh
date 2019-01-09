#!/bin/bash

cp -v ~/.Xresources ~/oldXresources
ln -fsv $PWD/Xresources ~/.Xresources
xrdb -merge ~/.Xresources
