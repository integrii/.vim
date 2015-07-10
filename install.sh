#!/bin/bash

# get rid of existing .vimrc and .vim/
if [[ -d ~/.vim ]]; then
	cp -r ~/.vim ~/.vim.old
	rm -rf ~/.vim
	echo "Moved ~/.vim to ~/.vim.old"
fi


# install .vimrc symlink
if [[ -f ~/.vimrc ]]; then
	cp ~/.vimrc ~/.vimrc.old
	rm -f ~/.vimrc
	echo "Moved ~/.vimrc to ~/.vimrc.old"
fi
ln -s ~/.vim/.vimrc ~/.vimrc


# install commands required for vim-go
if [[ -f `which go` ]]; then
	vim -c 'GoInstallBinaries'
else
	echo "Skipped golang setup because go was not installed.  To install later, run: vim -c 'GoInstallBinaries'"
fi
