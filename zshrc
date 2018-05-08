export TERM="xterm-256color"

if [ -f ~/.zsh_custom_profile ]; then
  source ~/.zsh_custom_profile
fi

unsetopt sharehistory
setopt Ignoreeof

if [ -f ~/.antigen.zsh ] ; then
  source ~/.antigen.zsh
else
  curl -L git.io/antigen -o ~/.antigen.zsh && source ~/.antigen.zsh
fi

antigen use oh-my-zsh
antigen bundle git
antigen bundle tmux
antigen bundle pip
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell

antigen apply
