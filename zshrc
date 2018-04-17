export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"
if [ "$TERM_PROGRAM" = 'iTerm.app' ] ; then
  export ALIEN_THEME='soft'
elif [ "$TERM_PROGRAM" = 'Apple_Terminal' ] ; then
  export ALIEN_THEME='blue'
fi
source  ~/.alien.zsh
ZSH_THEME="alien/alien"
plugins=(git vagrant common-aliases colored-man-pages rvm battery anapy tmux docker)
source $ZSH/oh-my-zsh.sh
if [ -f ~/.zsh_custom_profile ]; then
  source ~/.zsh_custom_profile
fi
unsetopt sharehistory
setopt Ignoreeof
source ~/.antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply
