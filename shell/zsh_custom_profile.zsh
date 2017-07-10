# Required Varibles
export EDITOR='vim'
export LC_CTYPE='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export ZSH_THEME='daveverwer'

# Shell Options
unsetopt sharehistory
setopt Ignoreeof


# Custom Sourcing
if [ -f ~/.aliases ] ; then
    source ~/.aliases
fi

if [ -f ~/.functions ] ; then
    source ~/.functions
fi

if [ -f ~/.python.path ] ; then
  source ~/.python.path
fi