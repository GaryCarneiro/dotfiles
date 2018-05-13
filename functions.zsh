#!/usr/bin/env zsh
# This function cert fetches SSL Certificate on a specified port or defaults the port to 443

function cert() {
    ( [ -z $2 ] ) &&  export port=443  ||  export port=$2  
    openssl s_client -connect $1:$port
}


#This function ta()  does following
# 1. Attaches to ( last?? ) Tmux session if no arguments is given
# 2. Attaches to the same Tmux session if Session exists given an argument
# 3. Creates a Session if not already present given an argument
ta() {
  tmux attach -t $1 || tmux new -t $1
}

alias tn='ta'


# This functions zaps the host from your ssh KnownHost file
function keydel() {
     [ -z $1 ] && echo  "Please pass some hostname as argument" || ssh-keygen -R $1 
}

# http://boredzo.org/blog/archives/2016-08-15/colorized-man-pages-understood-and-customized
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

# SSH via JumpBox
# Make entry for Jumpbox in ~/.ssh/config

jssh() {
usage="Usage : $0 <ip-address>"
u=$USER
if [ $# -lt 1 ];
    then
    echo $usage
    else
        ssh -A -tt $u@jumpbox ssh -tt $u@$1
    fi
}

jscp() {
# https://superuser.com/questions/276533/scp-files-via-intermediate-host
 echo "Copying $1 to $2"
 scp -oProxyJump=jumpbox $1 $2
}



dot_files_refresh () {
 TIMESTAMP=$(date "+%h%d-%Y-%H%M%S")
 BDIR="/tmp/garfield/dotfiles-$TIMESTAMP"
 echo "Refreshing Profile. Backing up in $BDIR"
 echo "Press Ctrl+C to exit or ENTER to continue"
 read
 mkdir -pv $BDIR/
 mv -v ~/.zshrc $BDIR/
 curl -s -L -o ~/.zshrc 'https://git.io/vpSjJ'
 mv -v ~/.vimrc $BDIR/
 rm -rf ~/.vim/bundle/Vundle.vim
 rm -rf ~/.antigen
 mv -v ~/.functions.zsh $BDIR/
 mv -v ~/.tmux.conf $BDIR/
 mv -v ~/.gemrc $BDIR
 mv -v ~/.irbrc $BDIR
 curl -s -L -o ~/.zshrc 'https://git.io/vpDFJ'
}


rssh() {
  rsync  ~/.zshrc $1:~/.zshrc
  echo "SSHing $1"
  ssh $*
}
