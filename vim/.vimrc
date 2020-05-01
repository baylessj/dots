packadd! onedark.vim
colo onedark
set background=dark

set nocompatible
filetype plugin on
syntax on
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

set number
set relativenumber

" Backspace over anything
set backspace=indent,eol,start

" stop getting weird errors from hitting 'Q' all the time
nnoremap Q q
nnoremap :W :w

" Stop the bell sound/flash
set noerrorbells visualbell t_vb=

filetype plugin on

let mapleader = ","

" Map Ctrl+n to NERD Tree
map <C-n> :NERDTreeToggle<CR>

" Tagbar plugin
nmap <leader>b :TagbarToggle<CR> 

" folding
set foldmethod=indent
set nofoldenable " all files are opened unfolded
" set foldlevel=2

set tabstop=3   " visual
set softtabstop=3 " actual amount inserted
set expandtab " use spaces

" Uncomment for indent guides on startup
" let g:indent_guides_enable_on_vim_startup = 1
set ts=3 sw=3 et

" Optional change the color of characters > 80 char mark
" highlight OverLength ctermbg=red ctermfg=darkred guibg=#592929
" match OverLength /\%81v.\+/

highlight ColorColumn ctermbg=239
set colorcolumn=80
