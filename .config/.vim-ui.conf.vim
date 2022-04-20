" *** Colorscheme
" *********************************************
set termguicolors

" Force true colour on, since vim can’t detect it within tmux.
" The last line on its own will work outside tmux, but result in no colours inside tmux.
" let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
" let &t_9b="\<Esc>[48;2;%lu;%lu;%lum"

" NeoDark
let g:neodark#use_256color = 1
colorscheme neodark
let g:neodark#solid_vertsplit = 1
let g:airline_theme = "neodark"

