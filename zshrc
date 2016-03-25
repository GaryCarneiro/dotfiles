#set -x
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME=random
# ZSH_THEME=pygmalion
# ZSH_THEME="gentoo"
ZSH_THEME="geoffgarside"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)


export EDITOR='vim'


source $ZSH/oh-my-zsh.sh
# Customize to your needs...

if [ -f ~/.aliases ] ; then
    source ~/.aliases
fi

if [ -f ~/.functions ] ; then
    source ~/.functions
fi

if [ -f $ZSH//zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] ; then
    source $ZSH//zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

if [ -f ~/.ssh_agent ] ; then 
    source ~/.ssh_agent
fi

if [ -f ~/.rvm/scripts/rvm ] ; then
    source ~/.rvm/scripts/rvm
    export  PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
fi

if [ -f ~/anaconda/bin ] ; then
    export  PATH=$PATH:~/anaconda/bin # Add Anaconda Bin to PATH for scripting
fi
#Do NOT share history between different shells. (It gets irritating after some time )
#
unsetopt sharehistory
setopt Ignoreeof

#Clear Screen
clear
