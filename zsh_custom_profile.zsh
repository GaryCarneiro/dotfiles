if [[ -d ~/.rubies/ruby-2.5.1/bin ]] ; then 
  export PATH=~/.rubies/ruby-2.5.1/bin:$PATH
fi

if [[ -f /usr/local/opt/chruby/share/chruby/chruby.sh ]] ; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
fi

# VIM CONFIG
if ! [[ -f ~/.vimrc ]] ; then
  echo "Downloading Vimrc."
  curl -sLo ~/.vimrc 'https://git.io/vpDo4'
  echo "Cloning Vundle."
  git clone https://github.com/VundleVim/Vundle.vim.git \
  ~/.vim/bundle/Vundle.vim
fi
# TMUX CONFIG
if ! [[ -f ~/.tmux.conf ]] ; then
  echo "Downloading tmux.conf"
  curl -sLo ~/.tmux.conf 'https://git.io/vpDoX'
fi

# Ruby GEMRC
if ! [[ -f ~/.gemrc ]] ; then
  echo "Downloading GemRC"
  curl -sLo ~/.gemrc 'https://git.io/vpShg'
fi

# Ruby IRBRC
if ! [[ -f ~/.irbrc ]] ; then
  echo "Downloading IRBRC."
  curl -sLo ~/.irbrc 'https://git.io/vpShK'
fi

export TERM="xterm-256color"
export EDITOR="vim"