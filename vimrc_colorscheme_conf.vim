" *** Colorscheme
" *********************************************
set termguicolors

" Force true colour on, since vim can’t detect it within tmux.
" The last line on its own will work outside tmux, but result in no colours inside tmux.
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_9b="\<Esc>[48;2;%lu;%lu;%lum"

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

" NeoDark
" let g:neodark#use_256color = 1
colorscheme neodark
let g:neodark#solid_vertsplit = 1

" OneDark
" let g:onedark_terminal_italics=1
" colorscheme onedark

" Gruvbox
" let g:gruvbox_italic=1
" let g:gruvbox_hls_cursor="aqua" " yank highlight
" let g:gruvbox_invert_selection=0
" let g:gruvbox_sign_column="bg0"
" let g:gruvbox_vert_split="bg1"
" let g:gruvbox_invert_tabline=1
" colorscheme gruvbox

" Ayu
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
" colorscheme ayu

" set background=dark
" let g:palenight_terminal_italics=1
" colorscheme palenight
" hi Search guibg=#697098 guifg=NONE
" hi IncSearch gui=underline,bold

let g:airline_theme = "neodark"

