#!/bin/bash

# ensure git installed
if [[ ! -f `which git` ]]; then
	echo "You must have git installed."
	exit 1
fi

# get rid of existing .vimrc and .vim/
if [[ -d ~/.vim ]]; then
	cp -r ~/.vim ~/.vim.old
	rm -rf ~/.vim
	echo "Moved ~/.vim to ~/.vim.old"
fi
git clone --recursive git@github.com:integrii/.vim.git ~/.vim


# install .vimrc symlink
if [[ -f ~/.vimrc ]]; then
	cp ~/.vimrc ~/.vimrc.old
	rm -rf ~/.vimrc
	echo "Moved ~/.vimrc to ~/.vimrc.old"
fi
ln -s ~/.vim/.vimrc ~/.vimrc

