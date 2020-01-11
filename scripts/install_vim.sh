#!/bin/zsh

# vimrc
if [ -e "$HOME/.vimrc" ]; then
  rm -rf $HOME/.vimrc
fi
ln -s `pwd`/vimrc $HOME/.vimrc

# spell file
if [ -e "$HOME/.vim-spell-en.utf-8.add" ]; then
  rm -rf $HOME/.vim-spell-en.utf-8.add
  rm -rf $HOME/.vim-spell-en.utf-8.add.spl
fi
ln -s `pwd`/vim-spell-en.utf-8.add $HOME/.vim-spell-en.utf-8.add

# create undo directory
if [ ! -d "$HOME/.vim/undo" ]; then
  mkdir $HOME/.vimrc/undo
fi
