#!/bin/bash

cp -v ~/.bashrc ~/bashrc.bak
cp -v ~/.inputrc ~/inputrc.bak
ln -fsv $PWD/bashrc ~/.bashrc
ln -fsv $PWD/inputrc ~/.inputrc
