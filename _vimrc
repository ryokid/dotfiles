set number
set title
set showmatch
"set smartindent
"set shiftwidth=2
set laststatus=2
set wildmenu
set wildmode=full
set history=200
set nobackup
set noundofile
set hlsearch

set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

set tw=0

set list listchars=tab:->
syntax on

"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-h> <Left>
"inoremap <C-l> <Right>

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

nmap <CR> i<CR><ESC>

nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

nnoremap ; :
nnoremap : ;

