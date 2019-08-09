set nocompatible

" *********************************************
" Plugins
" *********************************************
call plug#begin('~/.vim/plugged')

" *** Editor UI

Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" *** Git

Plug 'tpope/vim-fugitive'

call plug#end()

" *********************************************
" General Configuaraion
" *********************************************
filetype off
filetype plugin indent on
syntax enable
syntax on
set cursorline
set hidden                                                " All hiding unsaved buffer, and move on
set number
set numberwidth=4

set backspace=indent,eol,start                            " Make backspace works like most program
set laststatus=2                                          " Show the status line all the time
set lazyredraw
set nopaste
set showcmd
set ttyfast
set visualbell                                            " Disable sound


set autowrite                                             " autoload write
set autoread                                              " autoload read
au CursorHold,CursorHoldI,BufEnter * checktime
" au BufWritePost,BufReadPost * checktime | NERDTreeFocus | execute 'normal R' | wincmd p

set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set tabstop=2

set nowrap                                                " Don't wrap lines
set linebreak                                             " Wrap lines at convenient points

set noswapfile                                            " turn off swap file
set nobackup                                              " turn off backup file
set nowb

" Search
set incsearch                                             " Search: Find as you type search
set hlsearch                                              " Search: Highlight search terms
set ignorecase                                            " Search: Case-insensitive searching.
set smartcase                                             " Search: But case-sensitive if expression contains a capital letter.

" " Ex-command completion - If you’re used to the autocomplete menu provided by zsh,
" set wildmenu
" set wildmode=full
" set wildignore=*.o,*.obj,*~   " Stuff to ignore when tab completing

" Specifying Ruby path
let g:ruby_path = system('echo $HOME/.rbenv/shims')
let g:python3_host_prog = '/usr/local/bin/python3'

" Change default leader to ,
let mapleader=','

" *********************************************
" Colorschemes
" *********************************************
set termguicolors

" Force true colour on, since vim can’t detect it within tmux.
" The last line on its own will work outside tmux, but result in no colours inside tmux.
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

" " solarize dark
" set termguicolors
" let g:solarized_degrade=256
" let g:solarized_visibility="low"                          " Special characters such as trailing whitespace, tabs, empty buffer `~`
" let g:solarized_statusline="normal"
" highlight Comment cterm=italic

" " vim-one
" let g:one_allow_italics = 1
" set background=dark
" highlight LineNr guifg=grey
" colorscheme one

" " Oceanic Next
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" colorscheme OceanicNext

" *********************************************
" Windows
" *********************************************
" navigations between splitted windows
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l

" *********************************************
" Keys mapping
" *********************************************
nmap <leader>w :w!<CR> " Save file
nmap <Space> :noh<CR> " Clear last search highlighting

" *********************************************
" Navigations
" *********************************************
" Easy tabs navigation: Command+Shift+[
map <c-S-]> gt
map <c-S-[> gT

" Indenting in or out for visual selected
vmap <tab> >gv
vmap <s-tab> <gv

" *********************************************
" Plugin Customization
" *********************************************
if filereadable($HOME . "/.vim/custom/vimrc_plugins_conf.vim")
	source ~/.vim/custom/vimrc_plugins_conf.vim
endif

" *********************************************
" Local Vimrc Customization
" *********************************************
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
