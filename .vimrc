""""""""""""""
" Vim Config "
" """"""""""""

""" PLUGINS """

call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'chrisbra/unicode.vim'
Plug 'vim-python/python-syntax'

call plug#end()

set laststatus=2
set noshowmode


if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

set mouse=nicr

set nobackup
set noundofile
set noswapfile
set number relativenumber

"VIM KEYMAPS
inoremap { {}<Esc>i
inoremap [ []<Esc>i

map <C-n> :NERDTreeToggle<CR>
map <C-m> :!gcc -std=c99 -o
autocmd FileType c map <C-k> :!gcc -std=c99 ./%<CR>
map <C-i> :vs<CR>

inoremap ºº <Esc>
inoremap ç <Esc>

