if [ -f ~/.anaconda/bin ] ; then
  path=("$HOME/.anaconda/bin" $path)
fi

if [ -f ~/.anaconda/2/bin ] ; then
  path=("$HOME/.anaconda/2/bin" $path)
fi

if [ -f ~/.anaconda/3/bin ] ; then
  path=("$HOME/.anaconda/3/bin" $path)
fi
