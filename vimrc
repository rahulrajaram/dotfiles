set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/Windows-PowerShell-Syntax-Plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'dracula/vim'
Plugin 'morhetz/gruvbox'
Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()            " required

" set the runtime path to include vim-plug and initialize
call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'fenetikm/falcon'
call plug#end()

" filetype plugin indent on
syntax on

set tabstop=4
set expandtab
set shiftwidth=4
set number
set ruler

let mapleader = "-"

" Window resize
:nnoremap _ :vertical resize -5<cr>
:nnoremap + :vertical resize +5<cr>

" open vimrc in a separate tab
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>j
:nnoremap <leader>sv :source $MYVIMRC<cr>j

" espace mode
:inoremap hj <esc> 
:inoremap qw <esc>

" save and exit
:nnoremap <leader>qe <esc>:w<cr> 
:inoremap <leader>qe <esc>:w<cr> 
:nnoremap <leader>qd <esc>:wq<cr>
:inoremap <leader>qd <esc>:wq<cr>

" exit without save
:nnoremap <leader>qr <esc>:q!<cr>
:inoremap <leader>qr <esc>:q!<cr>


:vnoremap hj <esc> 
:vnoremap qw <esc>

"toggle NERDtree window
:nnoremap <silent> <F3> :NERDTreeToggle<CR>

"toggle split screens
:nnoremap <leader>a <c-w>h
:nnoremap <leader>d <c-w>l
:nnoremap <leader>w <c-w>k
:nnoremap <leader>z <c-w>j

" create split screen
:nnoremap <leader>vs :vsplit 
:nnoremap <leader>hs :split 

" movement
:nnoremap H 0
:nnoremap L $
:nnoremap <c-j> jjjjjjjjjj
:nnoremap <c-k> kkkkkkkkkk
:nnoremap L $

" voiding defaults
" :inoremap <esc> <nop>
:nnoremap <Up> <Nop>
:nnoremap <Down> <Nop>
:nnoremap <Left> <Nop>
:nnoremap <Right> <Nop>
:nnoremap q <Nop>

" selection
"select word
:nnoremap <space> viw
"convert a word to upper case in insert mode.
:nnoremap <c-u> viwU<Esc>
:nnoremap <c-a> ggvG$<cr>
:vnoremap L $
:vnoremap H 0

" modification
"put current word within single quotes
:nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel  	
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

:vnoremap " <esc>`<i"<esc>`>a"<esc>`<v`>ll			
:vnoremap ' <esc>`<i'<esc>`>a'<esc>`<v`>ll

"delete a line in insert mode.
:inoremap <c-d> <esc>ddi								

"convert a word to upper case in insert mode.
:inoremap <c-u> <esc>viw ui 											

" C++ abbreviations and autocmds
:iabbrev incldue include

"toggle set number
:nnoremap <leader>tn :set number!<cr>
:inoremap <leader>tn <esc> :set number! i

"toggle paste mode
:nnoremap <leader>tp :set paste!<cr>
:inoremap <leader>tp <esc> :set paste! i
"
"toggle relativenumber mode
:nnoremap <leader>trn :set relativenumber!<cr>
:inoremap <leader>trn <esc> :set relativenumber! i

"substitute all
function Subs(orig, repl)
    :%s/a:orig/a:repl:g
endfunction

" Ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim-erlang-runtime/

" ctags setup
set autochdir 
set tags=./tags,tags;$HOME
	
syntax enable
" set t_Co=256

"color dracula

"colorscheme  heman
"colorscheme gruvbox
"colorscheme falcon
let g:onedark_hide_endofbuffer = 1
let g:onedark_termcolors = 256
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
let g:airline_theme='onedark'
colorscheme onedark
"colorscheme sv
"
let g:airline#extensions#tabline#enabled = 1
set runtimepath^=~/.vim/bundle/ctrlp.vim
