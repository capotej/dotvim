call pathogen#infect()

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

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


" windows and splits
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>l <ESC>:vsp .<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
filetype plugin on
set ofu=syntaxcomplete#Complete
