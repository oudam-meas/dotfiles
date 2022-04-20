"  _   _     _               ___       ___    
" ( ) ( )   (_)   /'\_/`\   |  _`\    (  _`\ 
" | | | |   | |   |     |   | (_) )   | ( (_)
" | | | |   | |   | (_) |   | ,  /    | |  _ 
" | \_/ |   | |   | | | |   | |\ \    | (_( )
" `\___/'   (_)   (_) (_)   (_) (_)   (____/'
" " " " " " " " " " " " " " " " " " " " " " " "
set encoding=utf-8
let mapleader = "\\"

syntax enable
syntax on
set cursorline
set hidden                                     " All hiding unsaved buffer, and move on
set number
set numberwidth=4

set laststatus=2                               " Show the status line all the time
set lazyredraw
set nopaste
set showcmd
set ttyfast
set visualbell                                 " Disable sound

set autowrite                                  " autoload write
set autoread                                   " autoload read
au CursorHold,CursorHoldI,BufEnter * checktime " improve checktime frequency

set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set tabstop=2

set nowrap                                     " Don't wrap lines
set linebreak                                  " Wrap lines at convenient points

set noswapfile                                 " turn off swap file
set nobackup                                   " disable creating backup file
set nowritebackup                              " disable write backup

set incsearch                                  " Search: Find as you type search
set hlsearch                                   " Search: Highlight search terms
set ignorecase                                 " Search: Case-insensitive searching.
set smartcase                                  " Search: But case-sensitive if expression contains a capital letter.

" Concealing
set conceallevel=2
set concealcursor="ni"

if has ('autocmd') " Remain compatible with earlier versions
  augroup vimrc " Source vim configuration upon save
    autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
    autocmd! BufWritePost *.vim source % | echom "Reloaded " . $MYVIMRC| redraw
    autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
  augroup END
endif " has autocmd

" *********************************************
" Windows
" *********************************************
" Navigations between splitted windows
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l

" *********************************************
" Navigations
" *********************************************
" Indenting in or out for visual selected
vmap <tab> >gv
vmap <s-tab> <gv

" Mapping
nnoremap <Leader>vi :PlugInstall<CR>

" Local config
if filereadable($HOME . "/.vimrc.local.vim")
  source ~/.vimrc.local.vim
endif

if filereadable($HOME . "/.dotfiles/.config/.vim-ui.conf.vim")
  source ~/.dotfiles/.config/.vim-ui.conf.vim
endif

