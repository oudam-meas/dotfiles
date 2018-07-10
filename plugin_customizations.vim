" *********************************************
" Deoplete
" *********************************************
" Enable at startup
let g:deoplete#enable_at_startup = 1

" Navigating auto-complente with tab and S-tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" *********************************************
" Vim Test
" *********************************************
nmap <silent> <leader>. :TestLast<CR>
nmap <silent> <leader>A :TestSuite<CR>
nmap <silent> <leader>R :TestFile -strategy=basic<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>g :TestVisit<CR>
nmap <silent> <leader>r :TestNearest -strategy=basic<CR>
nmap <silent> <leader>t :TestNearest<CR>

let test#strategy = "dispatch"        "Using Dispatch strategy. Plugin 'tpope/vim-dispatch' is required'

" *********************************************
" NERDTree
" *********************************************
map \ :NERDTreeToggle<CR>
map \| :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode = 'l'
let g:NERDTreeMapCloseDir = 'h'
let g:NERDTreeMapRefreshRoot = 'r'
let NERDTreeStatusline = "%{fugitive#head()}"
let NERDTreeIgnore = ['\.envrc','yarn-error.log', 'rspec_examples.txt', '\.swp$', '\.DS_Store$', '\.ebextensions', '\.git$', '\.bundle$', '.keep$', '^tags', 'tags.lock$', 'tags.temp$']

" *********************************************
" Ack - Search
" *********************************************
" Abbreviating Ag to Ack!
cnoreabbrev Ag Ack!

" Quick Search - Binding ,f to find the word under cursor
nnoremap <leader>f :Ack! "\b<C-R><C-W>\b"<CR>

" Quick Search in visual mode
vmap <leader>f y:Ack! '<C-R>"'<CR>

" Write "Ack! `current word`" to vim command
nnoremap <leader>F :Ack!<Space>'<C-R><C-W>'

" Write "Ack! `current word`" to vim command - in visual mode
vmap <leader>F y:Ack! '<C-R>"'

" Promping Search and replace
nnoremap <leader>/ :call FindReplace('<C-R><C-W>','')<left><left>

" Promping Search and replace - Find and Replace
vmap <leader>/ y:call FindReplace('<C-R>"','')<left><left>

function! FindReplace(pattern,replace,...)
  let pattern = a:pattern
  let replace = a:replace
  let scope = a:0 >= 1 ? " -G ".a:1 : ""
  execute "Ack! '".pattern."'".scope
  execute "cdo %s/".pattern."/".replace."/gc | update"
endfunction

" *********************************************
" Lint - Neomake or Ale
" *********************************************
if has("nvim")
  " Using Neomake
  let g:neomake_serialize = 1
  let g:neomake_serialize_abort_on_error = 1
  let g:neomake_place_signs=0                 " Hide sign on sing column
  call neomake#configure#automake('w')        " When writing a buffer (no delay).
  autocmd! BufReadPost,BufWritePost * Neomake " Run NeoMake on read and write operations

  " Disable inherited syntastic
  let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": [],
    \ "passive_filetypes": []
    \ }
else
  " Using Ale
  let g:ale_lint_on_enter = 0
  let g:ale_lint_on_save = 1
  let g:ale_lint_on_text_changed = 'never'

  let g:ale_echo_msg_error_str = 'E'
  let g:ale_echo_msg_warning_str = 'W'
  let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
endif
" *********************************************
" Ctrlp
" *********************************************
let g:ctrlp_clear_cache_on_exit = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  let g:ctrlp_show_hidden = 1
  let g:ctrlp_prompt_mappings = { 'PrtInsert("c")':       ['<c-p>']}
  let g:ctrlp_match_window = 'max:20'         "max items in matched list
  let g:ctrlp_use_caching = 0
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden --skip-vcs-ignores -g ""' " skip gitignore. Hidden files such as .travis.yml will be indexed for ag search
endif

" Highlighting ctrlp prompt
highlight CtrlPPrtCursor ctermbg=50

" Mapping key
nmap <leader><leader> :CtrlPBuffer<cr>

" *********************************************
" Airline
" *********************************************
let g:airline_powerline_fonts = 1
let g:airline_section_b = ""  " hide section b (git related)

" Changing 'modified' character to red 
let g:airline_detect_modified = 0 "if you're sticking the + in section_c you probably want to disable detection
function! InitAirline()
  call airline#parts#define_raw('modified', '%{&modified ? " " : ""}')
  call airline#parts#define_accent('modified', 'red')
  let g:airline_section_c = airline#section#create(['%f', 'modified'])
endfunction

autocmd VimEnter * call InitAirline()

" *********************************************
" HighlightedYank
" *********************************************
let g:highlightedyank_highlight_duration = 150
highlight! link HighlightedyankRegion CursorLine

" *********************************************
" Gutentags
" *********************************************
set tags=./tags
au FileType gitcommit,gitrebase let g:gutentags_enabled=0

" *********************************************
" Vim Easy Align
" *********************************************
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" *********************************************
" Quickfix
" *********************************************
" let g:dispatch_quickfix_height = 17
nmap <leader>q <Plug>(qf_qf_toggle)

" *********************************************
" BufExplorer
" *********************************************
let g:bufExplorerShowRelativePath=1
nmap <leader>bb <leader>bs
let g:bufExplorerSplitBelow=1
let g:bufExplorerSplitHorzSize=20

" *********************************************
" Vim Indent Guide
" *********************************************
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'startify']
map <leader>I :IndentGuidesToggle<CR>

" *********************************************
" Vim Better Whitespace
" *********************************************
let g:strip_whitespace_on_save=1
nnoremap <leader><CR> :StripWhitespace<CR> \| :w<CR>
let g:better_whitespace_filetypes_blacklist=['vimrc']

