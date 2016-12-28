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
set textwidth=0
" dont automatically continue comments when we go to the next line
set fo=cqt
" forget compatibility with vi
set nocompatible
"Show matching braces
set showmatch
" case insensitive search
set ignorecase
" touchpad scrolling works in vim
set mouse=a
" make tab complete use the right stuff
autocmd FileType *
  \ if &omnifunc != '' |
  \   call SuperTabChain(&omnifunc, "<c-x><c-o>") |
  \   call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
  \ endif

" change menu colors
highlight Pmenu guibg=white gui=bold
highlight Pmenu ctermbg=lightblue gui=bold


" golang hilight options
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_build_constraints = 1


"
" lightline theme configuration
"

" branch icon for git
function MyFugitive()
	if exists("*fugitive#head")
		let _ = fugitive#head()
		return strlen(_) ? ' '._ : ''
	endif
	return ' '
endfunction

function! MyModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! MyReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else
    return ""
  endif
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

" theme
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'component_function': {
      \   'fugitive': 'MyFugitive',
      \   'readonly': 'MyReadonly',
      \   'modified': 'MyModified',
      \   'filename': 'MyFilename'
      \ },
	  \ 'separator': { 'left': '', 'right': '' },
	  \ 'subseparator': { 'left': '', 'right': '' }
      \ }


" better colors
if !has('gui_running')
	  set t_Co=256
  endif

" get rid of duplicate insert display
set noshowmode
