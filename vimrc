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

Plugin 'morhetz/gruvbox'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'pseewald/vim-anyfold'
Plugin 'ryanoasis/vim-devicons'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-syntastic/syntastic'

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

set nocompatible              " be iMproved, required
