if [[ -d ~/.rubies/ruby-2.5.1/bin ]] ; then 
  export PATH=~/.rubies/ruby-2.5.1/bin:$PATH
fi

if [[ -f /usr/local/opt/chruby/share/chruby/chruby.sh ]] ; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
fi

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