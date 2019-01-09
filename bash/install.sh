#!/bin/bash

cp -v ~/.bashrc ~/oldbashrc
cp -v ~/.inputrc ~/oldinputrc
ln -fsv $PWD/bashrc ~/.bashrc
ln -fsv $PWD/inputrc ~/.inputrc
