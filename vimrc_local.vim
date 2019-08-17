" *********************************************
" Custom Commands and mapping
" *********************************************
" vimrc file related
command! Vimrc e ~/.dotfiles/vimrc
command! SoVimrc so ~/.vimrc
nmap <silent> <leader>ii :so ~/.vimrc<CR> \| :PlugInstall<CR> \| :echo "reload and install plugins!"<CR>
nmap <silent> <leader>uu :so ~/.vimrc<CR> \| :PlugClean<CR> \| :echo "reload and clean plugins!"<CR>

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Close quickfix
nmap <leader>q :ccl<CR>

