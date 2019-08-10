set nocompatible

" *********************************************
" Vundle Plugins
" *********************************************
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
call plug#begin('~/.vim/plugged')

" *** UI
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" *** Fugitive
Plug 'tpope/vim-fugitive'

" *** Editing
Plug 'tpope/vim-commentary'             " gc{motion}, v_gc, {number}gcc
Plug 'ludovicchabant/vim-gutentags'
Plug 'mileszs/ack.vim'

" Dev tools
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'

" Vim ways
Plug 'kana/vim-operator-user'
Plug 'kana/vim-textobj-entire'          " object: e
Plug 'kana/vim-textobj-line'            " object: l
Plug 'kana/vim-textobj-user'            " requires bt vim-textobj-quotes
Plug 'wellle/targets.vim'               " object: a - arguments

Plug 'VundleVim/Vundle.vim'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'bogado/file-line'
Plug 'christoomey/vim-rfactory'
Plug 'christoomey/vim-sort-motion'      " motion: gs
Plug 'janko-m/vim-test'
Plug 'ternjs/tern_for_vim'
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" oceanic next with syntax
Plug 'mhartington/oceanic-next'
Plug 'othree/yajs.vim'
Plug 'othree/html5.vim'
Plug 'HerringtonDarkholme/yats.vim'

Plug 'romainl/ctags-patterns-for-javascript'
Plug 'jparise/vim-graphql'
Plug 'lepture/vim-velocity'
Plug 'junegunn/vim-easy-align'          " motion: ga
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'leafgarland/typescript-vim'
Plug 'machakann/vim-highlightedyank'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'ngmy/vim-rubocop'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rakr/vim-one'
Plug 'rizzatti/dash.vim'
Plug 'simeji/winresizer'                " To enter resizing mode : ctrl+e, and exit by enter
Plug 'szw/vim-maximizer'
Plug 't9md/vim-ruby-xmpfilter'
Plug 'tmhedberg/SimpylFold'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'                 " 'solve repeated the last native command inside that map, rather than the map as a whole'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'               " cs, ds, ys + {motion}
Plug 'wellle/visual-split.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'hashivim/vim-terraform'
Plug 'derekwyatt/vim-scala'
Plug 'mattn/emmet-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'godlygeek/tabular' " tabular must come before vim-markdown
Plug 'plasticboy/vim-markdown'
Plug 'moll/vim-bbye'

" Python programming
Plug 'davidhalter/jedi-vim'

" Plug 'prettier/vim-prettier', {
 "   \ 'do': 'npm install',
 "   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" deoplete dependencies for normal vim
if !has('nvim')
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Code Linter
if has('nvim')
  Plug 'neomake/neomake'
else
  Plug 'w0rp/ale'
end

call plug#end()

" call vundle#end()

" *********************************************
" General Configuaraion
" *********************************************
filetype off
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

filetype plugin indent on

set autowrite                                             " autoload write
set autoread                                              " autoload read

au CursorHold,CursorHoldI,BufEnter * checktime
au BufWritePost,BufReadPost * checktime | NERDTreeFocus | execute 'normal R' | wincmd p

set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set tabstop=2

set foldnestmax=3                                         " Folding: deepest fold is 3 levels
set nofoldenable                                          " Folding: dont fold by default

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

" Ex-command completion - If you’re used to the autocomplete menu provided by zsh,
set wildmenu
set wildmode=full
set wildignore=*.o,*.obj,*~       " Stuff to ignore when tab completing

" Specifying Ruby path
let g:ruby_path = system('echo $HOME/.rbenv/shims')

let g:python3_host_prog = '/usr/local/bin/python3'

" Colorscheme
set termguicolors

" The first two lines forces true colour on, since vim can’t detect it within tmux.
" The last line on its own will work outside tmux, but result in no colours inside tmux.
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

" " solarize dark
" set termguicolors
" let g:solarized_degrade=256
" let g:solarized_visibility="low"                          " Special characters such as trailing whitespace, tabs, empty buffer `~`
" let g:solarized_statusline="normal"
" highlight Comment cterm=italic

" vim-one
" let g:one_allow_italics = 1
" set background=dark
" highlight LineNr guifg=grey
" colorscheme one

" Oceanic Next
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

" *********************************************
" Keys mapping
" *********************************************
" Change default leader to ,
let mapleader=','

" Save file
nmap <leader>w :w!<CR>

" Clean up search hightlight
nmap <Space> :noh<CR>

" Easier navigation between split windows
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l

" Easy tabs navigation: Command+Shift+[
map <c-S-]> gt
map <c-S-[> gT

" Better Ruby Editing
"" Open the definition in a new split
nnoremap <c-\> <c-w>g<c-]>

"" Indenting in or out for visual selected
vmap <tab> >gv
vmap <s-tab> <gv

"" Auto-indenting the whole file
" nmap <leader><tab> <esc>gg=G<C-o><C-o>zz

"" Running Rubocop with auto-correct
let g:vimrubocop_keymap = 0
map <leader>ac :w<CR> :RuboCop --auto-correct %<CR><leader>q

"" Converting old hash to new Ruby 1.9 syntax
map <leader>: :%s/:\(\w\+\)\(\s*=>\s*\)/\1: /gc<CR>

"" Converting ' to "
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

au! BufNewFile,BufReadPost *.{yaml,yml,config} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
