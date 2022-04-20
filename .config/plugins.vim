call plug#begin('~/.config/nvim/plugged')
" UI
Plug 'KeitaNakamura/neodark.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'machakann/vim-highlightedyank'

" Editing
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'kana/vim-operator-user'
Plug 'kana/vim-textobj-entire'          " object: e - through ggVG
Plug 'kana/vim-textobj-line'            " object: l
Plug 'kana/vim-textobj-user'            " requires bt vim-textobj-quotes
Plug 'wellle/targets.vim'               " object: a - arguments
Plug 'michaeljsmith/vim-indent-object'  " object: I - indent
Plug 'ntpeters/vim-better-whitespace'
Plug 'bogado/file-line'

" Programming Langage
Plug 'fatih/vim-go'
Plug 'hashivim/vim-terraform'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Tags
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'ludovicchabant/vim-gutentags'

call plug#end()

" NerdTree
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1
map \|\| :NERDTreeToggle<CR>
map EE :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode = 'l'
let g:NERDTreeMapCloseDir = 'h'
let g:NERDTreeMapCloseChildren = 'H'
let g:NERDTreeMapRefresh = 'r'
let g:NERDTreeMapRefreshRoot = 'R'
let g:NERDTreeMapOpenSplit = 'sp'
let g:NERDTreeMapOpenVSplit = 'sv'
let g:airline_theme = "neodark"
let NERDTreeStatusline = "On %{fugitive#head()}"
" let NERDTreeStatusline = ""
" let NERDTreeIgnore = ['\.settings$', '\.editorconfig','node_modules$','\.idea$','\.envrc','yarn-error.log', 'rspec_examples.txt', '\.swp$', '\.DS_Store$', '\.git$', '\.bundle$', '.keep$', '^tags', 'tags.lock$', 'tags.temp$']
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
" let NERDTreeHighlightCursorline=1
" let g:NERDTreeNodeDelimiter = "\u00a0" " hide ^G

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" *** NERDTree Syntax Highlighting
" *********************************************
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

" *** HighlightedYank
" *********************************************
let g:highlightedyank_highlight_duration = 300
highlight! link HighlightedyankRegion Visual

" Ctrlp
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
nmap <C-b> :CtrlPBuffer<CR>
let g:ctrlp_map = '<c-p>'

