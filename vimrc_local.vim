" *********************************************
" Custom Commands and mapping
" *********************************************
" vimrc file related
command! Vimrc e ~/.dotfiles/vimrc
command! VimrcConf e ~/.dotfiles/vimrc_plugins_conf.vim
command! SoVimrc w | so ~/.vimrc

command! RetabFixTab set tabstop=2 shiftwidth=2 expandtab | retab | w

command! PyRun exec '!python' shellescape(@%, 1)

" Copying current file name
map <leader>c :let @+=expand("%").":".line(".")<CR> :echom "file path copied: ".@%.":".line(".") <CR>

" Close quickfix
nmap <leader>q :ccl<CR>

" hh to delete current word
imap hh <c-w>

" clear highlight search
nmap <Space> :noh<CR>

" Install and uninstall plugins
nmap <silent> <leader>PI :so ~/.vimrc<CR> \| :PlugInstall<CR> \| :echo "reload and install plugins!"<CR>
nmap <silent> <leader>PC :so ~/.vimrc<CR> \| :PlugClean<CR> \| :echo "reload and clean plugins!"<CR>

" tab to select
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" autocmd FileType json syntax match Comment +\/\/.\+$+
