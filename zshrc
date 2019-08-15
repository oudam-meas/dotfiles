export ZSH=~/.oh-my-zsh
source ~/.aliases
# Theme
ZSH_THEME=powerlevel10k/powerlevel10k

# Environment PATH
export PATH=$PATH:~/bin/
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/Library/Python/3.7/bin:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-12.0.1.jdk/Contents/Home

# If you come from bash you might have to change your $PATH.  export
export EDITOR=nvim

export zshrc=~/.zshrc
export vimrc=~/.vimrc
export dotfiles=~/Dropbox/Backups/dotfiles
export PG=~/Library/Application\ Support/Postgres
export TERM=xterm-256color-italic        # italic color is required for trueclor in tmux mode
# export CLICOLOR=1

eval "$(rbenv init -)"
# eval "$(ssh-agent -s)"

source $ZSH/oh-my-zsh.sh

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
