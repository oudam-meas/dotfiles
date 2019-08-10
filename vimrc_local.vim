" *********************************************
" Custom Commands
" *********************************************
" vimrc file related
command! Vimrc e ~/.dotfiles/vimrc
command! SoVimrc so ~/.vimrc

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Close quickfix
nmap <leader>q :ccl<CR>

