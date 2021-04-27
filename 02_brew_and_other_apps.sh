brew uninstall neovim
brew install --HEAD neovim
npm install neovim

#tmux
brew install reattach-to-user-namespace

# git
brew install tmux diff-so-fancy curl git the_silver_searcher zsh zsh-completions ctags node rbenv reattach-to-user-namespace

brew install autojump

# Tmux
brew install tmux
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install reattach-to-user-namespacea # enable in tmux.conf.local https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard#quick-summary

brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
