#!/bin/bash

# Ensure we're not running as root

if [ $EUID -eq 0 ] ; then
  echo "Do not run as root!" 1>&2
  exit 1
fi

anaconda_pkg_version='4.4.0'
anaconda_base_url='https://repo.continuum.io/archive'

anaconda_linux_url='https://repo.continuum.io/archive/Anaconda3-4.4.0-Linux-x86_64.sh'
anaconda_mac_url='https://repo.continuum.io/archive/Anaconda3-4.4.0-MacOSX-x86_64.sh'




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
    #anaconda_url=$anaconda_linux_url
    anaconda_package_name=$(echo "Anaconda3-"$anaconda_pkg_version"-Linux-x86_64.sh")
    anaconda_url=$(echo $anaconda_base_url/$anaconda_package_name)
    echo "Downloading Anaconda from: $anaconda_url"
    curl -I $anaconda_url
    chmod +x $anaconda_package_name
    ./$anaconda_package_name -b -p ~/.anaconda/3
  elif [$1 = 'Darwin'] ; then
    echo "Eat an Apple"
  fi
}


linux_pkg_names=(git zsh vim tmux curl wget)

if [ $os = 'Linux' ] ; then
  echo "OS is Linux"
  # We are specific to Ubuntu
  AptUpdate
  for pkg in "${linux_pkg_names[@]}" ; do
    CheckAndAptInstall $pkg
  done
  DownloadAnaconda3 Linux
elif [ $os = 'Darwin'] ; then
  echo "OS is MacOSX"
  DownloadAnaconda3 Darwin
fi
