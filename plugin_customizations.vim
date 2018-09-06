" *********************************************
" Deoplete
" *********************************************
" Enable at startup
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('auto_complete_delay', 200)

" Navigating auto-complente with tab and S-tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" *********************************************
" Vim Test
" *********************************************
let test#strategy = "dispatch"            " Using Dispatch strategy. Plugin 'tpope/vim-dispatch' is required'
let test#ruby#bundle_exec = 0
let test#enabled_runners = ["ruby#rspec"] " select which runners to load by default, intead load all
nmap <silent> <leader>. :TestLast<CR>
nmap <silent> <leader>A :TestSuite<CR>
nmap <silent> <leader>R :TestFile -strategy=basic<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>g :TestVisit<CR>
nmap <silent> <leader>r :TestNearest -strategy=basic<CR>
nmap <silent> <leader>t :TestNearest<CR>


" *********************************************
" NERDTree
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
let NERDTreeQuitOnOpen=1
let NERDTreeStatusline = "%{fugitive#head()}"
let NERDTreeIgnore = ['\.envrc','yarn-error.log', 'rspec_examples.txt', '\.swp$', '\.DS_Store$', '\.ebextensions', '\.git$', '\.bundle$', '.keep$', '^tags', 'tags.lock$', 'tags.temp$']
let NERDTreeShowHidden=1

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
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden --skip-vcs-ignores -g "" --path-to-ignore ./.gitignore' " skip gitignore. Hidden files such as .travis.yml will be indexed for ag search
endif

" Highlighting ctrlp prompt
highlight CtrlPPrtCursor ctermbg=50

" Mapping key
nmap <leader><leader> :CtrlPBuffer<cr>

" *********************************************
" CtrlP-CommandPalette
" *********************************************
nnoremap <leader>? :CtrlPCommandPalette<cr>
let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s' " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore

" *********************************************
" Airline
" *********************************************
let g:airline#extensions#tagbar#enabled = 0
let g:airline_powerline_fonts = 1
let g:airline_section_b = ""  " hide section b (git related)

" Changing 'modified' character to red 
let g:airline_detect_modified = 0 "if you're sticking the + in section_c you probably want to disable detection
function! InitAirline()
  call airline#parts#define_raw('modified', '%{&modified ? " " : ""}')
  call airline#parts#define_accent('modified', 'red')
  let g:airline_section_c = airline#section#create(['%f', 'modified'])
  " let g:airline_section_a = airline#section#create(['mode'])
  " let g:airline_section_b = airline#section#create_left(['hunks'])
  " let g:airline_section_x = airline#section#create(['branch', 'ffenc'])
  " let g:airline_section_y = ""
endfunction


autocmd VimEnter * call InitAirline()

" *********************************************
" HighlightedYank
" *********************************************
let g:highlightedyank_highlight_duration = 150
highlight! link HighlightedyankRegion CursorLine

" *********************************************
" Gutentags and Tagbar
" *********************************************
set tags=./tags
au FileType gitcommit,gitrebase let g:gutentags_enabled=0
nmap <F8> :TagbarToggle<CR>
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

" *********************************************
" Vim Better Whitespace
" *********************************************
let g:maximizer_default_mapping_key = '<F12>'

" *********************************************
" Visual Split
" *********************************************
" Visual-mode:
xmap <silent> gr <Plug>(Visual-Split-VSResize)
xmap <silent> gv <Plug>(Visual-Split-VSSplit)
xmap <silent> gk <Plug>(Visual-Split-VSSplitAbove)
xmap <silent> gj <Plug>(Visual-Split-VSSplitBelow)

" Operator-pending mode:
nmap <silent> gr <Plug>(Visual-Split-Resize)
nmap <silent> gv <Plug>(Visual-Split-Split)
nmap <silent> gk <Plug>(Visual-Split-SplitAbove)
nmap <silent> gj <Plug>(Visual-Split-SplitBelow)

" *********************************************
" Visual Split
" *********************************************
let g:goldenview__enable_default_mapping = 0

" 1. split to tiled windows
nmap <silent> gl <Plug>GoldenViewSplit

" 2. quickly switch current window with the main pane and toggle back
nmap <silent> gm <Plug>GoldenViewSwitchToggle
" nmap <silent> <leader>gm   <Plug>GoldenViewSwitchMain

" *********************************************
" Carbon Now Sh
" *********************************************
vnoremap <F3> :CarbonNowSh<CR>

" *********************************************
" seeing-is-believing with XMPFILTER
" *********************************************
" Enable seeing-is-believing mappings only for Ruby
let g:xmpfilter_cmd = "seeing_is_believing"
autocmd FileType ruby nmap <buffer> <F4> :w<CR><Plug>(seeing_is_believing-mark)
autocmd FileType ruby xmap <buffer> <F4> <Plug>(seeing_is_believing-mark)
autocmd FileType ruby imap <buffer> <F4> <Plug>(seeing_is_believing-mark)
autocmd FileType ruby nmap <buffer> <F6> :w<CR><Plug>(seeing_is_believing-clean)
autocmd FileType ruby xmap <buffer> <F6> <Plug>(seeing_is_believing-clean)
autocmd FileType ruby imap <buffer> <F6> <Plug>(seeing_is_believing-clean)
autocmd FileType ruby nmap <buffer> <F5> :w<CR><Plug>(seeing_is_believing-run)
autocmd FileType ruby xmap <buffer> <F5> <Plug>(seeing_is_believing-run)
autocmd FileType ruby imap <buffer> <F5> <Plug>(seeing_is_believing-run)

