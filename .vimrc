set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin()

Plug 'scrooloose/syntastic'
Plug 'ervandew/supertab'
Plug 'altercation/vim-colors-solarized'
Plug 'jnurmine/Zenburn'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Townk/vim-autoclose'
Plug 'kien/ctrlp.vim'
Plug 'nvie/vim-pyunit'
Plug 'pearofducks/ansible-vim'
Plug 'davidhalter/jedi-vim'

"Plugin for PEP8 style guide
Plug 'nvie/vim-flake8'
" All of your Plugins must be added before the following line
call plug#end()

"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" enable syntax highlighting
syntax enable
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
set laststatus=2

" show line numbers
set number
nnoremap <F2> :set nonumber!<CR>

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

"set textwidth=79

set wildmode=longest,list,full
set wildmenu

set foldmethod=indent
set foldlevel=99

if has('gui_running')
    set background=dark
    colorscheme solarized
else
    colorscheme zenburn
endif


let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

set clipboard=unnamed
set t_Co=256
set number
nnoremap <F2> :set nonumber!<CR>

" change markdown toggle hotkey

"au VimEnter *  NERDTree
