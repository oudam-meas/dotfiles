" Search
set incsearch                                             " Search: Find as you type search
set hlsearch                                              " Search: Highlight search terms
set ignorecase                                            " Search: Case-insensitive searching.
set smartcase                                             " Search: But case-sensitive if expression contains a capital letter.

" Highlight
" hi! link Sneak Search

" *********************************************
" Commands and Keys Mapping
" *********************************************
nmap <Space> :noh<CR>

" Tab to indent
vmap <tab> >gv
vmap <s-tab> <gv

" Indenting in or out for visual selected
vmap <tab> >gv
vmap <s-tab> <gv

" replace currently selected text with default register without yanking it
vnoremap <leader>p "0p
vnoremap <leader>P "0P

" Navigate between windows
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l

" register
nnoremap <silent> "" :registers<CR>
vnoremap <silent> "" :registers<CR>
