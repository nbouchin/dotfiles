#!/bin/bash

cp -v ~/.tmux.conf ~/tmux.conf.bak
ln -fsv $PWD/tmux.conf ~/.tmux.conf
