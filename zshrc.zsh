#!/usr/bin/env zsh

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


# Antigen ZSH Settings

export ALIEN_THEME="blue"
export USE_NERD_FONT=1

antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme eendroroy/alien alien
# antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply

unsetopt sharehistory
setopt Ignoreeof
