#!/usr/bin/env zsh

if [[ -f ~/.zsh_custom_profile ]]; then
  source ~/.zsh_custom_profile
fi

if [[ -f ~/.antigen.zsh ]] ; then
  source ~/.antigen.zsh
else
  echo "Downloading Antigen."
  curl -s -L 'https://git.io/antigen' -o ~/.antigen.zsh && source ~/.antigen.zsh
fi

if [[ -f ~/.functions.zsh ]] ; then
  source ~/.functions.zsh
else
  echo "Downloading Functions."
  curl -s -L 'https://git.io/vpDo3' -o ~/.functions.zsh && source ~/.functions.zsh
fi


if ! [[ -f ~/.vimrc ]] ; then
  echo "Downloading Vimrc."
  curl -s -L 'https://git.io/vpDo4' -o ~/.vimrc
  echo "Cloning Vundle."
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if ! [[ -f ~/.tmux.conf ]] ; then
  echo "Downloading tmux.conf"
  curl -s -L 'https://git.io/vpDoX' -o ~/.tmux.conf
fi

antigen use oh-my-zsh
antigen bundle git
antigen bundle tmux
antigen bundle pip
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme agnoster

antigen apply

unsetopt sharehistory
setopt Ignoreeof

export TERM="xterm-256color"
