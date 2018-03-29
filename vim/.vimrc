" (>^.^<) "

let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

" Mappings
" uppercases a word in insert mode
inoremap <C-u> <esc>vawUi
" uppercases a word in normal mode
nnoremap <leader>u vawU
" maps 0 to first non-space character
nnoremap 0 ^
"  remove highlighting from searches
nnoremap <leader>nn :noh<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" writes a file
nnoremap <leader>w :w!<cr>

" saves and closes a file
nnoremap <leader>q ZZ<cr>

" disable arrow keys to help with learning
:noremap <left> <nop>
:noremap <right> <nop>
:noremap <up> <nop>
:noremap <down> <nop>
:inoremap <left> <nop>
:inoremap <right> <nop>
:inoremap <up> <nop>
:inoremap <down> <nop>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>bn :bnext<cr>
map <leader>bp :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ag searching and cope displaying
"    requires ag.vim - it's much better than vimgrep/grep
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press gv you Ag after the selected text
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

" Open Ag and put the cursor in the right position
map <leader>g :Ag

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with Ag, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>


" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Find a word using find
nnoremap <leader>f :Find<cr>

" Search files using Files
nnoremap <leader>o :Files<cr>

" Open CtrlP
nnoremap <leader>e :NERDTree<cr>

" Required .vimrc configs
filetype off
filetype plugin indent on

set nocompatible
set scrolloff=3   " keep 3 lines when scrolling
set modelines=0

" Setup Vundle to manage my bundles
" -----------------------------------
" set rtp+=~/.vim/bundles/vundle/
" call vundle#rc("~/.vim/bundles/")

" Plugins are each listed in their own file. Loop and source ftw
" ----------------------------------------------------------------

filetype plugin indent on " required!
syntax on

set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'       " short for Vim bundle and is a Vim plugin manager
Plugin 'tpope/vim-fugitive'         " best Git wrapper of all time
Plugin 'tpope/vim-rake'             " like rails.vim
Plugin 'tpope/vim-rails'            " plugin for editing Ruby on Rails applications
Plugin 'tpope/vim-projectionist'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/tpope-vim-abolish'
Plugin 'tpope/vim-repeat'
Plugin 'kien/ctrlp.vim'                 " full path fuzzy file, buffer, mru, tag, ... finder
Plugin 'vim-syntastic/syntastic'        " syntax checker
Plugin 'scrooloose/nerdtree'            " file system explorer
Plugin 'leafgarland/typescript-vim'     " syntax checker for typescript
Plugin 'pangloss/vim-javascript'        " syntax highlighting and improved indentation for javascript
Plugin 'FelikZ/ctrlp-py-matcher'        " Fast CtrlP matcher based on python
Plugin 'BurntSushi/ripgrep'				" a line-oriented search tool that recursively searches your current directory for a regex pattern while respecting your gitignore rules.
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 						" a general-purpose command-line fuzzy finder.
Plugin 'junegunn/fzf.vim'
" Plugins that help ctags integration
" Bundle 'tpope/vim-fugitive'
Plugin 'tpope/vim-bundler.git'
Plugin 'thaerkh/vim-workspace'                " Automated Vim session management and file auto-save
" Plugin '907th/vim-auto-save'                " utomatically saves changes to disk without having to use :w (or any binding to it) every time a buffer has been modified or based on your preferred events.
" Plugin 'valloric/youcompleteme'             " a code-completion engine for vim
Plugin 'altercation/vim-colors-solarized'   "
Plugin 'christoomey/vim-tmux-navigator'     " Seamless navigation between tmux panes and vim splits
Plugin 'bling/vim-airline'                  " lean & mean status/tabline for vim that's light as air
" Plugin 'tomasr/molokai'                     " Molokai color scheme for Vim
Plugin 'tpope/vim-commentary'               " comment out a line
Plugin 'terryma/vim-multiple-cursors'       " True Sublime Text style multiple selections for Vim
Plugin 'tpope/vim-sensible'                 " sensible.vim: Defaults everyone can agree on
Plugin 'elzr/vim-json'                      " Vim plugin for intensely orgasmic commenting
Plugin 'othree/html5.vim'                   " HTML5 omnicomplete and syntax
Plugin 'thoughtbot/vim-rspec'               " Run Rspec specs from Vim
Plugin 'klen/python-mode'                   " Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box.
Plugin 'machakann/vim-highlightedyank'      " adds highligting to yank test
Plugin 'airblade/vim-gitgutter'             "  shows a git diff in the 'gutter' (sign column)

" [vim-workspace] settings
nnoremap <leader>s :ToggleWorkspace<CR>
let g:workspace_autocreate = 1						  " a session is automatically created if it doesn't exist
let g:workspace_autosave_always = 1 				" set autosave to be always on, even outside of a session, add
let g:workspace_session_disable_on_args = 1 " sessions will not load if you're explicitly loading a file in a workspace directory (as opposed to an argument-less `vim`)

call vundle#end()            " required

" [vim-cololrs-solarized] settings
let g:solarized_termcolors=256
let g:solarized_bold=1
let g:solarized_italic=1
let g:solarized_underline=1
let g:solarized_contrast="high"
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

" Clear signs on restart to show correctly
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow

" Reloading vimrc
" https://stackoverflow.com/questions/14943190/reloading-vimrc-causes-different-syntax-highlighting
augroup reload_vimrc
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
"
" [molakai] settings
" let g:molokai_original = 1

runtime macros/matchit.vim

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find2
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
" USE WITH MAC: command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
set grepprg=rg\ --vimgrep       "  ripgrep can also be used for grepprg
" https://medium.com/@crashybang/supercharge-vim-with-fzf-and-ripgrep-d4661fc853d2

" [Autosave] settings
let g:auto_save = 1  " enable AutoSave on Vim startup

" Auto read for files edited by other programs
set autoread
" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
            \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NEOVIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:loaded_python_provider = 1
let g:loaded_python3_provider = 1

" Plugins to skip when using neovim
if has('nvim')
    let g:loaded_sensible = 0
endif

" Searching
set hlsearch		" sets highligting of search keywords
set incsearch		" performs an incremental search as text is being typed in
set smartcase		" tries to be smart about case when searching
set showmatch   " jump to matches when entering regexp
set ignorecase  " ignore case when searching

" Configure  backspace to act correctly
set backspace=eol,start,indent		" sets backspace so MAC delete key works as backspace
set whichwrap+=<,>,h,l

" Spacing, tabs, and numbers
set ruler		" adds a ruler to lower right corner for current position
set number		" sets line numbers in the side column
set relativenumber	" sets numbers relative to the current cursor
set shiftround		" sets indent > | < to be multiples of shiftwidth
set numberwidth=3	" sets width of column that shows line numbers

"Miscellaneous
set showcmd       " display incomplete commands

" Performance

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Tabs, and indentation
set expandtab		" use spaces instead of tabs
set smarttab		" smart choices when using tabs
set shiftwidth=2	" 1 tab equals 2 spaces
set tabstop=2		" see above
set lbr			" add linebreak
set tw=500		" linebreak at 500 lines
set ai 			" Auto indent
set si			" Smart indent
set wrap		" Word wrap

" Clipboard
" set clipboard=unnamed       " For MacVim to copy to the system clipboard

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Add function for vim-repeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_ruby_checkers = ["rubocop"]					" Enables syntax checking for ruby
let g:syntastic_javascript_checkers = ['eslint']      " Sets javascript checker
" let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'   " An alternative is to have Syntastic use the project-specific binary of eslint:
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_max_files=0
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
" Speed CtrlP - https://stackoverflow.com/questions/21346068/slow-performance-on-ctrlp-it-doesnt-work-to-ignore-some-folders
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JAVASCRIPT
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-javascript configuration
let g:javascript_plugin_jsdoc = 1       " Enables syntax highlighting for JSDocs.
let g:javascript_plugin_ngdoc = 1       " Enables some additional syntax highlighting for NGDocs. Requires JSDoc plugin to be enabled as well.
" augroup javascript_folding              " Enables code folding for javascript based on our syntax file. * Please note this can have a dramatic effect on performance.
"     au!
"     au FileType javascript setlocal foldmethod=syntax
" augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PYTHON
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python nnoremap <buffer> <leader>r :exec '!python' shellescape(@%, 1)<cr>       " Run the current file in python when <leader>r NOT WORKING
autocmd FileType python nnoremap <leader>R <Esc>:w<CR>:!clear;python %<CR>      " Run the current file in python, WORKING
