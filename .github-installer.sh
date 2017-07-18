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
git clone git@github.com:integrii/.vim.git ~/.vim


# install .vimrc symlink
if [[ -f ~/.vimrc ]]; then
	cp ~/.vimrc ~/.vimrc.old
	rm -rf ~/.vimrc
	echo "Moved ~/.vimrc to ~/.vimrc.old"
fi
ln -s ~/.vim/.vimrc ~/.vimrc


# Clone extra repositories into place
#https://github.com/tpope/vim-pathogen.git
git clone https://github.com/tpope/vim-pathogen.git ~/.vim/bundle/vim-pahtogen
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
git clone https://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible
git clone https://github.com/itchyny/lightline.vim.git ~/.vim/bundle/lightline.vim
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/supertab
