#!/usr/bin/env bash

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

VUNDLE_DIR="$DOTFILES_DIR/.vim/bundle/Vundle.vim"
if [ ! "$(ls -A $VUNDLE_DIR)" ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git "$VUNDLE_DIR"
  vim +PluginInstall +qall
else
  git --work-tree="$VUNDLE_DIR" --git-dir="$VUNDLE_DIR/.git" pull origin master
fi

ln -s "$DOTFILES_DIR/.bashrc" ~
ln -s "$DOTFILES_DIR/.inputrc" ~
ln -s "$DOTFILES_DIR/.vimrc" ~
ln -s "$DOTFILES_DIR/.vim" ~
ln -s "$DOTFILES_DIR/.screenrc" ~

if [[ $(uname) -eq "Linux" ]]; then
  ln -s "$DOTFILES_DIR/.Xresources" ~
  ln -s "$DOTFILES_DIR/.fluxbox" ~
fi
