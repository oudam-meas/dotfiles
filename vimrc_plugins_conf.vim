" *********************************************
" UI
" *********************************************

" *** Colorscheme
" *********************************************
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:onedark_terminal_italics=1
colorscheme onedark

" *** Airline
" *********************************************
let g:airline_theme='onedark'
let g:airline#extensions#tagbar#enabled = 0
let g:airline_powerline_fonts = 1
let g:airline_section_b = ""  " hide section b (git related)

" Changing 'modified' character to red 
let g:airline_detect_modified = 0 "if you're sticking the + in section_c you probably want to disable detection
function! InitAirline()
  call airline#parts#define_raw('modified', '%{&modified ? "【✚" : ""}')
  call airline#parts#define_accent('modified', 'red')
  let g:airline_section_c = airline#section#create(['%f', 'modified'])
endfunction
autocmd VimEnter * call InitAirline()

" *** NERDTree
" *********************************************
map \ :NERDTreeToggle<CR>
map \| :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode = 'l'
let g:NERDTreeMapCloseDir = 'h'
let g:NERDTreeMapCloseChildren = 'H'
let g:NERDTreeMapRefresh = 'r'
let g:NERDTreeMapRefreshRoot = 'R'
let g:NERDTreeMapOpenSplit = 'sp'
let g:NERDTreeMapOpenVSplit = 'sv'
let NERDTreeHighlightCursorline=1
let NERDTreeStatusline = "%{fugitive#head()}"
let NERDTreeIgnore = ['\.settings$', '\.editorconfig','node_modules$','\.idea$','\.envrc','yarn-error.log', 'rspec_examples.txt', '\.swp$', '\.DS_Store$', '\.git$', '\.bundle$', '.keep$', '^tags', 'tags.lock$', 'tags.temp$']
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let g:NERDTreeNodeDelimiter = "\u00a0" " hide ^G

" *** NERDTree Syntax Highlighting
" *********************************************
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
