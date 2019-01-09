#!/bin/bash

cp -v ~/.tmux.conf ~/oldtmux.conf
ln -fsv $PWD/tmux.conf ~/.tmux.conf
