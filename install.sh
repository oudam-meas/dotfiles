brew install curl git the_silver_searcher zsh zsh-completions
chsh -s $(which zsh) # chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew install pip3
brew install vim
brew install neovim --tag=master

~/.dotfiles/symbolink.sh

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
nvim +PluginInstall +qall
