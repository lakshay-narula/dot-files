set nocompatible              " be iMproved, required

" COLORSCHEME
colo torte

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
set wildignorecase

" file to store custom spellings
set spellfile=~/.vim-spell-en.utf-8.add
exec 'silent mkspell! ' . &spellfile . '.spl ' . &spellfile

" persistent undo
set undofile
set undodir=$HOME/.vim/undo

set undolevels=1000
set undoreload=10000

" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .

" ENABLE SYNTAX PROCESSING
syntax enable
" indent allows backspacing over autoindent
" eol allows backspacing over line breaks
" start allows backspacing over the start of insert
set backspace=indent,eol,start
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" MAINTAIN SCROLLING BUFFER
set scrolloff=5

" SPACING AND TABS
filetype plugin indent on   " load filetype-specific indent files
set tabstop=2
set softtabstop=2           " number of spaces in tab when editing
set shiftwidth=2
set expandtab               " tabs are spaces
set smartindent             " indent automatically on new lines

" UI CONFIG
set number              " show line numbers
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]

" SEARCHING
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" BUFFER MOVEMENT
" Tab cycles to next buffer
nnoremap <Tab> :bnext<CR>
" Shift-tab cycles to previous buffer
nnoremap <S-Tab> :bprevious<CR>

" PLUGINS
" installs vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

" Buffers in command bar
Plug 'bling/vim-bufferline'

call plug#end()

set laststatus=2
let g:bufferline_active_highlight = 'StatusLine'
let g:bufferline_inactive_highlight = 'StatusLineNC'

" bufferline integration in to statusline
let g:bufferline_echo = 0
autocmd VimEnter *
  \ let &statusline='%{bufferline#refresh_status()}'
    \ .bufferline#get_status_string()
    \ .'%='
    \ .'%y %p%% %l:%c'
