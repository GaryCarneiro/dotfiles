#!/usr/bin/env zsh

# VIM CONFIG
if ! [[ -f ~/.vimrc ]] ; then
  echo "Downloading Vimrc."
  curl -s -L 'https://git.io/vpDo4' -o ~/.vimrc
  echo "Cloning Vundle."
  git clone https://github.com/VundleVim/Vundle.vim.git \
  ~/.vim/bundle/Vundle.vim
fi
# TMUX CONFIG
if ! [[ -f ~/.tmux.conf ]] ; then
  echo "Downloading tmux.conf"
  curl -s -L 'https://git.io/vpDoX' -o ~/.tmux.conf
fi

# Ruby GEMRC
if ! [[ -f ~/.gemrc ]] ; then
  echo "Downloading GemRC"
  curl -s -L 'https://git.io/vpShg' -o ~/.gemrc
fi

# Ruby IRBRC
if ! [[ -f ~/.irbrc ]] ; then
  echo "Downloading IRBRC."
  curl	 -s -L 'https://git.io/vpShK' -o ~/.irbrc
fi

# ANTIGEN
if [[ -f ~/.antigen.zsh ]] ; then
  source ~/.antigen.zsh
else
  echo "Downloading Antigen."
  curl -s -L 'https://git.io/antigen' -o ~/.antigen.zsh && \
  source ~/.antigen.zsh
fi

# CUSTOM ZSH FUNCTIONS
if [[ -f ~/.functions.zsh ]] ; then
  source ~/.functions.zsh
else
  echo "Downloading Functions."
  curl -s -L 'https://git.io/vpShy' -o ~/.functions.zsh && \
  source ~/.functions.zsh
fi

# CUSTOM ZSH PROFILE
if ! [[ -f ~/.zsh_custom_profile ]]; then
  echo "Dowloading  Custom Profile"
  curl -s -L 'https://git.io/vpShp' -o ~/.zsh_custom_profile && \
  source ~/.zsh_custom_profile
else
  source ~/.zsh_custom_profile
fi

antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme agnoster
antigen apply

unsetopt sharehistory
setopt Ignoreeof

export TERM="xterm-256color"