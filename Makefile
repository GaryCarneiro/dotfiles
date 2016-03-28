BACKUPDIR=~/.dotfiles-$(shell date "+%d%b%Y-%H%M%S")

all:	backup ssh shell zsh git tmux vim


backup:
	@echo "Backup Directory is $(BACKUPDIR)"
	mkdir -v $(BACKUPDIR)
ssh:
	touch ~/.ssh/config
	/bin/cp -vf ~/.ssh/config $(BACKUPDIR)/
	/bin/cp -vf ssh_config ~/.ssh/config

shell:
	touch ~/.bashrc
	/bin/cp -vf ~/.bashrc  $(BACKUPDIR)
	
	touch ~/.bash_profile
	/bin/cp -vf ~/.bash_profile  $(BACKUPDIR)

	touch ~/.aliases
	/bin/cp -vf ~/.aliases $(BACKUPDIR)
	/bin/cp -vf aliases ~/.aliases
	
	touch ~/.functions
	/bin/cp -vf ~/.functions $(BACKUPDIR)
	/bin/cp -vf functions ~/.functions

zsh:
	touch ~/.zshrc
	/bin/cp -vf ~/.zshrc $(BACKUPDIR)
	/bin/cp -vf zshrc ~/.zshrc

git:
	touch ~/.gitconfig
	/bin/cp -vf ~/.gitconfig $(BACKUPDIR)
	/bin/cp -vf gitconfig ~/.gitconfig

tmux:
	touch ~/.tmux.conf
	/bin/cp -vf ~/.tmux.conf $(BACKUPDIR)
	/bin/cp -vf tmux.conf ~/.tmux.conf

vim:
	touch ~/.vimrc
	/bin/cp -vf ~/.vimrc $(BACKUPDIR)
	/bin/cp -vf vimrc ~/.vimrc

ruby:
	touch ~/.irbrc
	/bin/cp -vf ~/.irbrc $(BACKUPDIR)
	/bin/cp -vf irbrc ~/.irbrc
	touch ~/.gemrc
	/bin/cp -vf ~/.gemrc $(BACKUPDIR)
	/bin/cp -vf gemrc ~/.gemrc
