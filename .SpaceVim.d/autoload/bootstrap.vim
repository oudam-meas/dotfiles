function! bootstrap#before() abort
  " *********************************************
  " Basic config, Keys Mapping
  " *********************************************
  " Tab to indent
  vmap <tab> >gv
  vmap <s-tab> <gv

  " Indenting in or out for visual selected
  vmap <tab> >gv
  vmap <s-tab> <gv

  " Navigate between windows
  nmap <c-j> <c-w>j
  nmap <c-k> <c-w>k
  nmap <c-h> <c-w>h
  nmap <c-l> <c-w>l

  " Terminal
  map <leader>` <Space>' 

  " Clear Search
  map <leader>/ :noh<CR>

  " *********************************************
  " Plugin: junegunn/vim-easy-align
  " *********************************************
  " Start interactive EasyAlign in visual mode (e.g. vipga)
  xmap <leader>a <Plug>(EasyAlign)

  " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap <leader>a <Plug>(EasyAlign)

  " *********************************************
  " Plugin: NERDTREE
  " *********************************************
  map \|\| :NERDTreeToggle<CR>
  nmap EE :NERDTreeFind<CR>

  " Create default mappings
  let g:NERDCreateDefaultMappings = 1
  let g:highlightedyank_highlight_duration = 100
endfunction
" function! bootstrap#after() abort
"   let g:neomake_javascript_eslint_maker =  {
"         \ 'exe': 'npx',
"         \ 'args': ['--quiet', 'eslint', '--format=compact'],
"         \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
"         \   '%W%f: line %l\, col %c\, Warning - %m,%-G,%-G%*\d problems%#',
"         \ 'cwd': '%:p:h',
"         \ 'output_stream': 'stdout',
"         \ }

"   let g:neomake_javascript_jsx_enabled_makers = ['eslint']
"   let g:neoformat_enabled_javascript = ['npxprettier']
" endfunction

