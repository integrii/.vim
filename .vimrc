execute pathogen#infect()
" syntax hilighting
syntax on

filetype plugin indent on
" ensure some spaces are always displayed at the bottom 
set scrolloff=2
" displays tabs only 4 spaces
set tabstop=4
" makes tab inputs only 4 spaces
set shiftwidth=4
" color scheme default
colorscheme monokai
" disable the terrible scratch window
set completeopt-=preview
" hilight the cursor's current line
set cursorline
" this is how many columns until we wrap comments
set textwidth=80
" dont automatically continue comments when we go to the next line
set fo=cqt
" forget compatibility with vi
set nocompatible
"Show matching braces
set showmatch
" case insensitive search
set ignorecase
" change C-x C-o shortcut for auto-complete to tab
autocmd FileType *
  \ if &omnifunc != '' |
  \   call SuperTabChain(&omnifunc, "<c-x><c-o>") |
  \   call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
  \ endif

highlight Pmenu guibg=white gui=bold
highlight Pmenu ctermbg=lightblue gui=bold





