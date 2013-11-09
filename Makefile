all:	ssh shell zsh git tmux vim 

ssh:
	/bin/cp -v ssh_config ~/.ssh/config

shell:
	/bin/cp -v aliases ~/.aliases
	/bin/cp -v functions ~/.functions
zsh:
	/bin/cp -v zshrc ~/.zshrc

git:
	/bin/cp -v gitconfig ~/.gitconfig

tmux:
	/bin/cp -v tmux.conf ~/.tmux.conf

vim:
	/bin/cp -v vimrc ~/.vimrc

ruby:
	/bin/cp -v irbrc ~/.irbrc
