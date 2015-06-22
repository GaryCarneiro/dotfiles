BACKUPDIR=~/.dotfiles-$(shell date "+%d%b%Y-%H%M%S")

all:	backup ssh shell zsh git tmux vim


backup:
	@echo "Backup Directory is $(BACKUPDIR)"
	mkdir -v $(BACKUPDIR)
ssh:
	/bin/cp -v ~/.ssh/config $(BACKUPDIR)/
	/bin/cp -v ssh_config ~/.ssh/config

shell:
	/bin/cp -v ~/.bashrc  $(BACKUPDIR)
	/bin/cp -v ~/.bash_profile  $(BACKUPDIR)
	/bin/cp -v ~/.aliases $(BACKUPDIR)
	/bin/cp -v aliases ~/.aliases
	/bin/cp -v ~/.functions $(BACKUPDIR)
	/bin/cp -v functions ~/.functions

zsh:
	/bin/cp -v ~/.zshrc $(BACKUPDIR)
	/bin/cp -v zshrc ~/.zshrc

git:
	/bin/cp -v ~/.gitconfig $(BACKUPDIR)
	/bin/cp -v gitconfig ~/.gitconfig

tmux:
	/bin/cp -v ~/.tmux.conf $(BACKUPDIR)
	/bin/cp -v tmux.conf ~/.tmux.conf

vim:
	/bin/cp -v ~/.vimrc $(BACKUPDIR)
	/bin/cp -v vimrc ~/.vimrc

ruby:
	/bin/cp -v ~/.irbrc $(BACKUPDIR)
	/bin/cp -v irbrc ~/.irbrc
	/bin/cp -v ~/.gemrc $(BACKUPDIR)
	/bin/cp -v gemrc ~/.gemrc
