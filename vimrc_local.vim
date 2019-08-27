" *********************************************
" Custom Commands and mapping
" *********************************************
" tab to select
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" vimrc file related
command! Vimrc e ~/.dotfiles/vimrc
command! SoVimrc w | so ~/.vimrc | e |echo "sourced vimrc...!"
nmap <silent> <leader>PI :so ~/.vimrc<CR> \| :PlugInstall<CR> \| :echo "reload and install plugins!"<CR>
nmap <silent> <leader>PC :so ~/.vimrc<CR> \| :PlugClean<CR> \| :echo "reload and clean plugins!"<CR>

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Close quickfix
nmap <leader>q :ccl<CR>

" Copying current file name
map <leader>c :let @+=expand("%").":".line(".")<CR> :echom "file path copied: ".@%.":".line(".") <CR>

