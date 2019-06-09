#!/bin/bash

# tmux config file
if [ -e "$HOME/.tmux.conf" ]; then
    rm -rf $HOME/.tmux.conf
fi
ln -s `pwd`/tmux.conf $HOME/.tmux.conf
