brew install vim
brew install neovim --tag=master
~/dotfiles/symbolink.sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
nvim +PluginInstall +qall
