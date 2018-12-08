set t_BE=
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
call vundle#end()            " required

" install Pathogen
execute pathogen#infect()

" filetype plugin indent on
syntax on

set expandtab
set tabstop=2
set shiftwidth=2
set number		

let mapleader = "-"

" create split screen
:nnoremap <leader>vs :vsplit 
:nnoremap <leader>hs :split 

:nnoremap <leader>vi :vertical resize +10<cr> 
:nnoremap <leader>vd :vertical resize -10<cr> 
:nnoremap <leader>hi :resize +10<cr> 
:nnoremap <leader>hd :resize -10<cr> 

" open vimrc in a separate tab
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>j
:nnoremap <leader>sv :source $MYVIMRC<cr>j

" espace mode
:inoremap hj <esc> 
:inoremap qw <esc>

" save and exit
:inoremap <leader>qw <esc>:w<cr>i 
:nnoremap <leader>qe <esc>:w<cr>
:nnoremap <leader>qd <esc>:wq<cr>
:inoremap <leader>qd <esc>:wq<cr>i

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

" toggle set paste
function! Paste_Func()
    let s:inPaste = &paste
    if !s:inPaste
        set paste
    else
        set nopaste
    endif
endfunction
:nnoremap <leader>spp :call Paste_Func()<cr>

" C++ abbreviations and autocmds
:iabbrev incldue include

Plugin 'morhetz/gruvbox'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'pseewald/vim-anyfold'
Plugin 'ryanoasis/vim-devicons'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-fireplace'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-syntastic/syntastic'
Plugin 'rust-lang/rust.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'racer-rust/vim-racer'
 
set encoding=utf-8
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
" let g:airline_powerline_fonts = 1
let g:webdevicons_enable_ctrlp = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:clang_library_path = '/usr/lib/llvm-3.8/lib/libclang.so'

" vim-anyfold
filetype plugin indent on
syntax on
" let anyfold_activate=1
" set foldlevel=0

syntax enable

" CPP syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1

colorscheme gruvbox 
set background=dark

" vim-fugitive shortcuts
:nnoremap <leader>gb :Gblame<CR>

set tags+=~/Downloads/third-party-libraries/**/tags
set tags+=/usr/local/include
set tags+=/usr/local/lib/**/tags

" Rust completions
let g:racer_cmd = "/home/rahul/.cargo/bin/racer"
:inoremap <leader>0 <C-x><C-o>

let g:opamshare = substitute(system('opam config var share'), '\n$', '', '''')
execute "set rtp+=" . g:opamshare . "/mervin/vim"

set nocompatible              " be iMproved, required

" show dot files
let NERDTreeShowHidden=1
let g:NERDTreeDirArrows=0
