if [[ -d ~/.rubies/ruby-2.5.1/bin ]] ; then 
  export PATH=~/.rubies/ruby-2.5.1/bin:$PATH
fi

if [[ -f /usr/local/opt/chruby/share/chruby/chruby.sh ]] ; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
fi
