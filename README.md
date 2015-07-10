### integrii/.vim

This is my `.vim` folder.  It is a simple but useful vim configuration with no major package dependences.  Just run the `install.sh` script on any Mac or Linux host to get colors, tab completion, git awareness, and golang support with a beautiful status bar.


![](https://raw.githubusercontent.com/integrii/.vim/master/screenshot.png)

![](https://raw.githubusercontent.com/integrii/.vim/master/screenshot2.png)


## Componets
- [Pathogen](https://github.com/tpope/vim-pathogen) (package manager)
- [vim-go](https://github.com/fatih/vim-go) (golang enhancements)
- [vim-sensible](https://github.com/tpope/vim-sensible) (very passive boilerplate improvements)
- [vim-lightline](https://github.com/itchyny/lightline.vim) (lighter variant of vim-airline - pretty status bar)
- [vim-fugitive](https://github.com/tpope/vim-fugitive) (git status in the status bar)
- [supertab](https://github.com/ervandew/supertab) (easy tab completion)
- [monokai](https://github.com/tomasr/molokai) (color theme)


## Installation
An installer is included for easy deployment.  Just run the following.  Your existing `~.vim` file will be placed at `~/.vim.old`.  You must have get installed.

```bash
curl -L 'https://raw.githubusercontent.com/integrii/.vim/master/install.sh' | bash
```

## Extending
Extending this config with more packages is easy.  Just cd to the `~/.vim/bundle` directory and `git clone` the package you want to install.  Likewise, delete any package directories in there you don't want or like.  

## Config Overrides
If you want to do some config changes or overrides, just place them in your regular `~/.vimrc` file.
