#!/usr/bin/env ruby                                                                                                                                                                                                                             
#Auto Completion for Ruby
#sudo gem install wirble (Universal)
#sudo apt-get install ruby-wirble (Debian)
#Another Good Option is Pry (http://pryrepl.org/)

require 'irb/completion'
require 'rubygems'
require 'wirble'
Wirble.init
Wirble.colorize
