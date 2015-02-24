set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
call vundle#end()            " required

" install pathogen
execute pathogen#infect()

" filetype plugin indent on
syntax on

set tabstop=2															
set shiftwidth=2															
set number		

let mapleader = "-"

" open vimrc in a separate tab
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>j
:nnoremap <leader>sv :source $MYVIMRC<cr>j

" espace mode
:inoremap hj <esc> 
:inoremap qw <esc>

" save and exit
:inoremap <leader>qw <esc>:w<cr>i 
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


" movement
:nnoremap H 0
:nnoremap L $

" voiding defaults
:inoremap <esc> <nop>
:nnoremap <Up> <Nop>
:nnoremap <Down> <Nop>
:nnoremap <Left> <Nop>
:nnoremap <Right> <Nop>

" selection
"select word
:nnoremap <space> viw
"convert a word to upper case in insert mode.
:nnoremap <c-u> viwu															

" modification
"put current word within single quotes
:nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel  	
:nnoremap <leader>" viw<esc>a'<esc>hbi'<esc>lel  	

:vnoremap " <esc>`<i"<esc>`>a"<esc>`<v`>ll			
:vnoremap ' <esc>`<i'<esc>`>a'<esc>`<v`>ll

"delete a line in insert mode.
:inoremap <c-d> <esc>ddi								

"convert a word to upper case in insert mode.
:inoremap <c-u> <esc>viw ui 											

" C++ abbreviations and autocmds
:iabbrev incldue include

Plugin 'sickill/vim-monokai'
Plugin 'tpope/vim-rails'
Plugin 'morhetz/gruvbox'

syntax enable
colorscheme gruvbox 
set background=dark
