"----- Start of general settings -----"

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

set nofoldenable

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

"nmap <CR> i<CR><ESC>

nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

nnoremap <silent> <C-L> :noh<C-L><CR>

"nnoremap ; :
"nnoremap : ;

nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk
nnoremap gj j
nnoremap gk k

"autocmd VimEnter * execute 'NERDTree'

"----- End of general settings -----"



"----- Start of settings for dein.vim -----"

if !&compatible
  set nocompatible
endif

" reset augroup
augroup MyAutoCmd
autocmd!
augroup END

augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

" Automatic installation of dein.vim.
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath
" Load plugin & Create cache.
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif
" Automatic installation of missing plugins.
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

"----- End of settings for dein.vim -----"

set term=xterm-256color
syntax on
