#!/bin/sh

export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

VUNDLE_DIR="$DOTFILES_DIR/.vim/bundle/Vundle.vim"
if [[ ! -d "$VUNDLE_DIR" ]]; then
  git clone https://github.com/VundleVim/Vundle.vim.git "$VUNDLE_DIR"
  vim +PluginInstall +qall
else
  git --work-tree="$VUNDLE_DIR" --git-dir="$VUNDLE_DIR/.git" pull origin master
fi

[[ ! -a "$HOME/.bashrc" ]] && ln -s "$DOTFILES_DIR/.bashrc" ~
[[ ! -a "$HOME/.inputrc" ]] && ln -s "$DOTFILES_DIR/.inputrc" ~
[[ ! -a "$HOME/.screenrc" ]] && ln -s "$DOTFILES_DIR/.screenrc" ~
[[ ! -a "$HOME/.tmux.conf" ]] && ln -s "$DOTFILES_DIR/.tmux.conf" ~
[[ ! -a "$HOME/.vim" ]] && ln -s "$DOTFILES_DIR/.vim" ~
[[ ! -a "$HOME/.vimrc" ]] && ln -s "$DOTFILES_DIR/.vimrc" ~
[[ ! -a "$HOME/.Xresources" ]] && ln -s "$DOTFILES_DIR/.Xresources" ~

if [[ $(uname) -eq "Linux" ]]; then
  ln -s "$DOTFILES_DIR/.fluxbox" ~
fi
