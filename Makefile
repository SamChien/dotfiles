#

init:
	ln -fs `pwd`/.cshrc $(HOME)/.cshrc
	ln -fs `pwd`/.cshrc.d $(HOME)/.cshrc.d
	ln -fs `pwd`/.gitconfig $(HOME)/.gitconfig
	ln -fs `pwd`/.global-gitignore $(HOME)/.gitignore
	ln -fs `pwd`/.screenrc $(HOME)/.screenrc
	ln -fs `pwd`/.tmux.conf $(HOME)/.tmux.conf
	ln -fs `pwd`/.vimrc $(HOME)/.vimrc
	ln -fs `pwd`/.vim $(HOME)/.vim
	ln -fs `pwd`/.my.cnf $(HOME)/.my.cnf
	ln -fs `pwd`/.grcat $(HOME)/.grcat
	mkdir -p  $(HOME)/bin
	ln -fs `pwd`/bin/diff-highlight $(HOME)/bin/diff-highlight
	ln -fs `pwd`/bin/memcache-top $(HOME)/bin/memcache-top
	ln -fs `pwd`/bin/update-homebrew $(HOME)/bin/update-homebrew
	ln -fs `pwd`/bin/init-tmux-env $(HOME)/bin/init-tmux-env
	ln -fs `pwd`/.bash_profile $(HOME)/.bash_profile
	ln -fs `pwd`/.bashrc $(HOME)/.bashrc
	ln -fs `pwd`/.zshrc $(HOME)/.zshrc

update:
	git pull --rebase

cleanup:
	rm $(HOME)/.cshrc
	rm -rf $(HOME)/.cshrc.d
	rm $(HOME)/.gitconfig
	rm $(HOME)/.gitignore
	rm $(HOME)/.screenrc
	rm $(HOME)/.tmux.conf
	rm $(HOME)/.vimrc
	rm -rf $(HOME)/.vim
	rm $(HOME)/.my.cnf
	rm $(HOME)/.grcat
	rm -rf $(HOME)/bin
	rm $(HOME)/.bash_profile
	rm $(HOME)/.bashrc
	rm $(HOME)/.zshrc

