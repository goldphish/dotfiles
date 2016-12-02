#!/usr/bin/env bash

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

echo $DOTFILES_DIR
ln -s "$DOTFILES_DIR/.bashrc" ~
ln -s "$DOTFILES_DIR/.inputrc" ~
