#!/bin/bash -x

# Ensure we're not running as root

if [ $EUID -eq 0 ] ; then
  echo "Do not run as root!" 1>&2
  exit 1
fi

export anaconda_pkg_version='4.4.0'
export anaconda_base_url='https://repo.continuum.io/archive'
export anaconda_prefix_path="$HOME/.anaconda/3"
export anaconda_pip="$anaconda_prefix_path"/bin/pip
echo $anaconda_pip

echo "Determing OS"
os=$(uname)


function CheckAndAptInstall() {
  echo "Checking and installing $1"
  which $1 > /dev/null || sudo apt-get install $1 && echo "[[ $1 ]] is already installed"
}


function AptUpdate(){
  echo "Updating Repo Info"
  sudo apt-get update && echo "APT Repo Updated"
}


function DownloadAnaconda3() {
  if [ $1 = 'Linux' ] ; then

    anaconda_linux_package_name=$(echo "Anaconda3-"$anaconda_pkg_version"-Linux-x86_64.sh")
    anaconda_url=$(echo $anaconda_base_url/$anaconda_package_name)

    echo "Downloading Anaconda from: $anaconda_url"

    curl -I $anaconda_url
    chmod +x $anaconda_linux_package_name
    echo "Installing Anaconda from $anaconda_linux_package_name"
    #./$anaconda_linux_package_name -b -p $anaconda_prefix_path

  elif [$1 = 'Darwin'] ; then
    anaconda_macos_package_name=$(echo "Anaconda3-"$anaconda_pkg_version"-MacOSX-x86_64.sh")
    anaconda_url=$(echo $anaconda_base_url/$anaconda_package_name)

    echo "Downloading Anaconda from: $anaconda_url"

    curl -I $anaconda_url
    chmod +x $anaconda_linux_package_name
    echo "Installing Anaconda from $anaconda_linux_package_name"
    #./$anaconda_linux_package_name -b -p $anaconda_prefix_path

  fi
}


linux_pkg_names=(git zsh vim tmux curl wget)

if [ $os = 'Linux' ] ; then
  echo "OS is Linux"
  # Caveat(?): We are specific to Ubuntu
  #AptUpdate
  for pkg in "${linux_pkg_names[@]}" ; do
    CheckAndAptInstall $pkg
  done
  DownloadAnaconda3 Linux
elif [ $os = 'Darwin'] ; then
  echo "OS is MacOSX"
  DownloadAnaconda3 Darwin
fi

echo "Checking if $anaconda_pip is executable"
if [[ -x $anaconda_pip ]] ; then
  echo "Installing Ansile using $anaconda_pip"
  $anaconda_pip install ansible
fi