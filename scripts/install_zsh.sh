#!/bin/zsh

# tmux config file
if [ -e "$HOME/.zshrc" ]; then
    rm -rf $HOME/.zshrc
fi
ln -s `pwd`/zshrc $HOME/.zshrc
