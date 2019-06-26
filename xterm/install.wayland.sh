#!/bin/bash

cp -v ~/.Xdefaults ~/Xdefaults.back
ln -fsv $PWD/Xdefaults ~/.Xdefaults
xrdb -merge ~/.Xdefaults
