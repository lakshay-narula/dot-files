#!/bin/zsh

# vimrc
if [ -e "$HOME/.vimrc" ]; then
  rm -rf $HOME/.vimrc
fi
ln -s `pwd`/vimrc $HOME/.vimrc

# create undo directory
if [ ! -d "$HOME/.vim/undo" ]; then
  mkdir $HOME/.vimrc/undo
fi
