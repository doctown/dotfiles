" (>^.^<) "

let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

" Mappings
inoremap <leader>u <esc>vawUi	" uppercases a word in insert mode
nnoremap <leader>u vawU		" uppercases a word in normal mode
nnoremap 0 ^			" maps 0 to first non-space character
nnoremap <leader>n :noh<cr>	"  remove highlighting from searches
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Required .vimrc configs
filetype off
filetype plugin indent on

set nocompatible
set modelines=0

" Setup Vundle to manage my bundles
" -----------------------------------
set rtp+=~/.vim/bundles/vundle/
call vundle#rc("~/.vim/bundles/")

" Plugins are each listed in their own file. Loop and source ftw
" ----------------------------------------------------------------

filetype plugin indent on " required!
syntax on

set nocompatible              " be iMproved, required

" call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-projectionist'
Plugin 'vim-ruby/vim-ruby'

runtime macros/matchit.vim
if has("autocmd")
  filetype indent plugin on
endif

set hlsearch		" sets highligting of search keywords
set incsearch		" performs an incremental search as text is being typed in
set backspace=2	" sets backspace so MAC delete key works as backspace
set number		" sets line numbers in the side column
set relativenumber	" sets numbers relative to the current cursor
set shiftround		" sets indent > | < to be multiples of shiftwidth
set numberwidth=3	" sets width of column that shows line numbers
