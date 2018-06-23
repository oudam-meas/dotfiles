set nocompatible
filetype off
" *********************************************
" *              Vundle Plugins               *
" *********************************************
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'beloglazov/vim-textobj-quotes'      "object q, iq
Plugin 'christoomey/vim-sort-motion'        "gs{motions}
Plugin 'christoomey/vim-system-copy'        "cp{motion}, cP, cv
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'gabrielelana/vim-markdown'
Plugin 'haya14busa/vim-operator-flashy'
Plugin 'janko-m/vim-test'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kana/vim-operator-user'
Plugin 'kana/vim-textobj-indent'            "object i, vai, vii
Plugin 'kana/vim-textobj-line'              "object l, il, al
Plugin 'kana/vim-textobj-user'              "requires bt vim-textobj-quotes
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'nelstrom/vim-textobj-rubyblock'     "object ar, ir
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'pangloss/vim-javascript'
Plugin 'qpkorr/vim-bufkill'
Plugin 'rizzatti/dash.vim'
Plugin 'romainl/vim-qf'
Plugin 'roxma/nvim-completion-manager'        " pip3 install --upgrade neovim
Plugin 'roxma/vim-hug-neovim-rpc'                   " required by nvim-completion-manager
Plugin 'scrooloose/nerdtree'
Plugin 'simeji/winresizer'                  " To enter resizing mode : ctrl+e, and exit by enter
Plugin 'skywind3000/asyncrun.vim'
Plugin 'stephpy/vim-yaml'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tonekk/vim-binding-pry'
Plugin 'tpope/vim-commentary'               "gc{motion}, v_gc, {number}gcc
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'                 "cs, ds, ys + {motion}
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'wellle/targets.vim'
Plugin 'wfleming/vim-codeclimate'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'itchyny/lightline.vim'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'neomake/neomake'
Plugin 'KeitaNakamura/neodark.vim'

call vundle#end()
" *********************************************
" *               General config              *
" *********************************************
"Basic
syntax on
set numberwidth=4
set number
set hid                               " solve problem of switch window

"Color Scheme and other UI
syntax enable
set background=dark
colorscheme solarized


let mapleader=','                     "Remap leader to ','
set backspace=indent,eol,start        "Make backspace works like most program
set laststatus=2                  "Show the status line all the time
set nopaste
set showcmd
set t_Co=256
set visualbell                        "Disable sound

"Custom Plugin
"""""""""""""""""""""""""""""""""""""""""""
if has("nvim")
  source ~/.vim/custom/neomake.vim
endif

source ~/.vim/custom/ctrlp.vim
source ~/.vim/custom/lightline.vim
" source ~/.vim/custom/vim-airline.vim
source ~/.vim/custom/nerdtree.vim
source ~/.vim/custom/search-helper.vim
source ~/.vim/custom/vim-indent-guides.vim
source ~/.vim/custom/vim-javascript.vim
source ~/.vim/custom/vim-operator-flashy.vim
source ~/.vim/syntax.vim

"Indentation
filetype plugin indent on
set autoindent
set expandtab
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set tabstop=2

"Display tabs and trailing spaces visually
set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

"Auto load
set autowrite
set autoread

"Turn Off Swap Files
set noswapfile
set nobackup
set nowb

""Set color for '~' in End of Buffer to the same as background color
highlight EndOfBuffer ctermfg=bg ctermbg=bg

"Folding
set foldnestmax=3                 "Folding: deepest fold is 3 levels
set nofoldenable                  "Folding: dont fold by default

""Solve insert mode performance
autocmd InsertLeave,WinEnter * setlocal foldmethod=syntax       "foldmethod stays as 'syntax' when not in insert mode
autocmd InsertEnter,WinLeave * setlocal foldmethod=manual       "foldmethod must be set to 'manual' to improve performance during editing

"Vim Faster
let g:ruby_path = system('echo $HOME/.rbenv/shims')

"Set vert line to space and set tab/trail character
set fillchars+=vert:\ |set list listchars=tab:\ \ ,trail:∙

"Search
set incsearch                     "Search: Find as you type search
set hlsearch                      "Search: Highlight search terms
set ignorecase                    "Search: Case-insensitive searching.
set smartcase                     "Search: But case-sensitive if expression contains a capital letter.
highlight IncSearch guibg=green ctermbg=green term=underline
set tags=./tags

"* General Key mapping
nnoremap ; :
nnoremap <Space> :noh<CR>

" Open current file in external app
nmap <silent> <leader>c :exec 'silent !open -a "Google Chrome" % &'<CR>
nmap <silent> <leader>a :exec 'silent !open -a "atom" % &'<CR>

" Easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Cursor shape
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" *********************************************
" *                Text Object                *
" *********************************************
" cleanup whitespace and save
nnoremap <leader><CR> :StripWhitespace<CR> \| :w<CR>

" Leave Terminal mode to Normal mode
tnoremap <C-i> <C-\><C-n>

" indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv
" *                Code helper                *
" Convert old hash to new Ruby 1.9 syntax
map <leader>: :%s/:\(\w\+\)\(\s*=>\s*\)/\1: /gc<CR>

" Convert ' to "
map <leader>' :%s/'\([^']*\)'/"\1"/gc<CR>

" *                 Vim Test                  *
nmap <silent> <leader>. :TestLast<CR>
nmap <silent> <leader>A :TestSuite<CR>
nmap <silent> <leader>R :TestFile -strategy=basic<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>g :TestVisit<CR>
nmap <silent> <leader>r :TestNearest -strategy=basic<CR>
nmap <silent> <leader>t :TestNearest<CR>

let test#ruby#rspec#executable = "bin/rspec"
let test#strategy = "dispatch"        "Use Dispatch strategy, Plugin 'tpope/vim-dispatch' us required

" *       quickfix window.        *
let g:dispatch_quickfix_height = 17
nmap <leader>q <Plug>(qf_qf_toggle)

" *         Vim Completions Manager           *
" When using tab to navigate the suggestions
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" *         tagbar
nnoremap <silent> <Leader>? :TagbarToggle<CR>

" vim-haml
autocmd FileType haml setlocal foldmethod=indent

" tmhedberg/SimpylFold
let g:SimpylFold_docstring_preview = 1

"bufferexplorer
let g:bufExplorerShowRelativePath=1
nmap <leader>bb <leader>bs
let g:bufExplorerSplitBelow=1
let g:bufExplorerSplitHorzSize=20

" Tabs
nmap t gt
nmap 1t 1gt
nmap 2t 2gt
nmap 3t 3gt
nmap 4t 4gt
nmap T gT

" * Other commands
" Rubocop
map <c-x> :!rubocop --auto-correct %<CR>
command! Vimrc e ~/.vimrc
command! Sovimrc so ~/.vimrc
cnoreabbrev w' w
let g:AutoPairsFlyMode = 1 " leave current pair by just typing closing pair
nmap ,c% :let @+=expand("%")<cr>
map ,dp obinding.pry<ESC> :w<cr>
map ,ds a, :js, :selenium_chrome<ESC> :w<cr>
map ,dsd :%s/\,\ :js,\ :selenium_chrome//g<cr> :w<cr>
map ,dsa osave_and_open_page<ESC> :w<cr>
map ,s ys
