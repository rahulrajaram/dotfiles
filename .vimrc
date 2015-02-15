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

" automatically invoke nerdtree when opening Vim
" autocmd vimenter * NERDTree

filetype plugin indent on
syntax on

set tabstop=2															
set shiftwidth=2															
set number																			"set line numbers

:let mapleader = "-"

" espace mode
:inoremap hj <esc> 
:inoremap qw <esc>

:vnoremap hj <esc> 
:vnoremap qw <esc>

"delete a line in insert mode.
:inoremap <c-d> <esc>ddi													

"convert a word to upper case in insert mode.
:inoremap <c-u> <esc>viw ui 											

"toggle NERDtree window
:nnoremap <silent> <F3> :NERDTreeToggle<CR>

"toggle split screens
:nnoremap <leader>a <c-w>h
:nnoremap <leader>d <c-w>l
:nnoremap <leader>w <c-w>k
:nnoremap <leader>s <c-w>j

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

Plugin 'sickill/vim-monokai'
Plugin 'tpope/vim-rails'

syntax enable
colorscheme monokai
