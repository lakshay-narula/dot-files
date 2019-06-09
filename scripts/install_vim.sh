#!/bin/bash

# vimrc
if [ -e "$HOME/.vimrc" ]; then
    rm -rf $HOME/.vimrc
fi
ln -s `pwd`/vimrc $HOME/.vimrc
