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

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_config_file='.syntastic_cpp_config'
" let g:syntastic_cpp_check_header=1
let g:syntastic_cpp_remove_include_errors=1
let g:syntastic_c_include_dirs=['.\embOS','.\WallControl\726x_Hardware','.\Application','.\Application\sys_ctrl','.\BleTask','.\DataDictionary\Generated','./Drivers','Drivers\sdcard','GUI','GUI\altia_renesas','Middleware','Middleware\encryption','Middleware\encryption\mbedtls','Standard','WiFi','Clarinox\System\BSP\Common','Clarinox\System\ClarinoxBlue\API','Clarinox\System\CommonAPI']
let g:syntastic_c_compiler_options='-D BING'
