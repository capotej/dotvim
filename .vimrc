call pathogen#infect()

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set autoindent
set autoread
set showmode
set hidden
set cursorline
set ttyfast
set ruler
set laststatus=2
set colorcolumn=80

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set showmatch
nnoremap / /\v
vnoremap / /\v

runtime macros/matchit.vim

"" Mappings
let g:ctrlp_map = '<c-p>'
imap ;; <Esc>

"" Macvim
set guioptions-=T
set guifont=Menlo\ Regular:h19
let g:loaded_netrwPlugin = 1

"" Tweaks
set nu "line numbers
set hid "stops bitching when files havent saved

inoremap jj <ESC>

" windows and splits
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>l <ESC>:vsp .<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
filetype plugin on
set ofu=syntaxcomplete#Complete

" sane highlighting
:highlight Search ctermbg=none ctermfg=white cterm=underline

" rvm support
set shell=/bin/sh

" reload .vimrc
nnoremap <leader>sv :so $MYVIMRC<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<CR>


" vimrc.local
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif


" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" ctags
set tags=.tags,gems.tags,.gems.tags
noremap <leader>pt :!ctags -RV --languages=ruby -f .gems.tags `gem env gemdir` && ctags -f .tags -RV . <cr>

