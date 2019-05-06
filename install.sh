git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

brew uninstall neovim
brew install tmux diff-so-fancy curl git the_silver_searcher zsh zsh-completions ctags node rbenv reattach-to-user-namespace

brew install --HEAD neovim

npm install neovim

rbenv init
brew upgrade rbenv ruby-build

pip3 install --user pynvim

~/.dotfiles/symbolink.sh

rm -rf ~/.vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
nvim +PluginInstall +qall

tmux source-file ~/.tmux.conf