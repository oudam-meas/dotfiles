" *********************************************
" Vundle Plugins
" *********************************************
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized' " color name is 'solarized'
Plugin 'beloglazov/vim-textobj-quotes'    " object q, iq
Plugin 'christoomey/vim-sort-motion'      " gs{motions}
Plugin 'christoomey/vim-system-copy'      " cp{motion}, cP, cv
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'gabrielelana/vim-markdown'
Plugin 'szw/vim-maximizer'
Plugin 'janko-m/vim-test'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'junegunn/vim-easy-align'
Plugin 'kana/vim-operator-user'
Plugin 'kana/vim-textobj-line'            " object l, il, al
Plugin 'kana/vim-textobj-user'            " requires bt vim-textobj-quotes
Plugin 'leafgarland/typescript-vim'
Plugin 'lifepillar/vim-solarized8'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'machakann/vim-highlightedyank'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'ngmy/vim-rubocop'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'pangloss/vim-javascript'
Plugin 'qpkorr/vim-bufkill'
Plugin 'romainl/vim-qf'
Plugin 'scrooloose/nerdtree'
Plugin 'simeji/winresizer'                " To enter resizing mode : ctrl+e, and exit by enter
Plugin 'stephpy/vim-yaml'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'             " gc{motion}, v_gc, {number}gcc
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'                 " 'solve repeated the last native command inside that map, rather than the map as a whole'
Plugin 'tpope/vim-surround'               " cs, ds, ys + {motion}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wellle/targets.vim'

if has('nvim')
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'neomake/neomake'
else
  Plugin 'w0rp/ale'
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif

call vundle#end()

" *********************************************
" General Configuaraion
" *********************************************
filetype off
set nocompatible
set number
set numberwidth=4
set hidden
syntax enable
syntax on

set backspace=indent,eol,start                            " Make backspace works like most program
set laststatus=2                                          " Show the status line all the time
set lazyredraw
set nopaste
set showcmd
set ttyfast
set visualbell                                            " Disable sound

filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set tabstop=2

set nowrap                                                " Don't wrap lines
set linebreak                                             " Wrap lines at convenient points

set autowrite                                             " autoload write
set autoread                                              " autoload read

set noswapfile                                            " turn off swap file
set nobackup                                              " turn off backup file
set nowb

set foldnestmax=3                                         " Folding: deepest fold is 3 levels
set nofoldenable                                          " Folding: dont fold by default

" Search
set incsearch                                             " Search: Find as you type search
set hlsearch                                              " Search: Highlight search terms
set ignorecase                                            " Search: Case-insensitive searching.
set smartcase                                             " Search: But case-sensitive if expression contains a capital letter.

" Colorscheme
let g:solarized_degrade=256
let g:solarized_visibility="low"                          " Special characters such as trailing whitespace, tabs, empty buffer `~`
let g:solarized_statusline="normal"
set background=dark
colorscheme solarized

" Cursor shape w/wo tmux
if exists('$ITERM_PROFILE')
  if exists('$TMUX')
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
end

" *********************************************
" Keys mapping
" *********************************************
let mapleader=','
nmap <leader>w :w!<cr>
nmap <Space> :noh<CR>

" Easier navigation between split windows
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l
map <leader>ac :RuboCop --auto-correct %<CR>

" Setting indent in/indent out for visual selected
vmap <tab> >gv
vmap <s-tab> <gv

" Convert old hash to new Ruby 1.9 syntax
map <leader>: :%s/:\(\w\+\)\(\s*=>\s*\)/\1: /gc<CR>

" Convert ' to "
map <leader>' :%s/'\([^']*\)'/"\1"/gc<CR>


" *********************************************
" Plugin Customization
" *********************************************
if filereadable($HOME . "/.vim/custom/plugin_customizations.vim")
  source ~/.vim/custom/plugin_customizations.vim
endif

" *********************************************
" Local Vimrc Customization
" *********************************************
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
