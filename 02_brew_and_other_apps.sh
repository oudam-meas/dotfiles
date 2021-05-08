# Tools
brew install --HEAD neovim
brew install autojump ctags curl git ripgrep

# git
brew install diff-so-fancy 

# Tmux
brew install tmux
brew install reattach-to-user-namespace # enable in tmux.conf.local https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard#quick-summary
git clone https://github.com/gpakosz/.tmux.git ~/.tmux
cd ~/ || exit
ln -s -f ~/.tmux/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.tmux/.tmux.conf.local ~/.tmux.conf.local
tmux source-file ~/.tmux.conf

# install spacevim
curl -sLf https://spacevim.org/install.sh | bash
# SpaceVim.d is source in different repo due to https://github.com/SpaceVim/SpaceVim/issues/4152
# rm -rf ~/.SpaceVim.d
# ln -s ~/.dotfiles/.SpaceVim.d ~/.SpaceVim.d 
