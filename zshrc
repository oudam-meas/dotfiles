export ZSH=~/.oh-my-zsh
source ~/.aliases

# ** ZSH THEME ** #
ZSH_THEME=powerlevel10k/powerlevel10k

# ** Environment Paths ** #
export PATH=$PATH:~/bin/
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/Library/Python/3.7/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin

# ** Basic Config ** #
export EDITOR=nvim
export zshrc=~/.zshrc
export vimrc=~/.vimrc
export dotfiles=~/Dropbox/Backups/dotfiles
export PG=~/Library/Application\ Support/Postgres

# ** Evaluate plugins ** #
export TERM=xterm-256color-italic        # italic color is required for trueclor in tmux mode
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

# ** Plugins ** #
plugins=(
  zsh-syntax-highlighting
)

# ** Evaluate plugins ** #
# eval "$(rbenv init -)"

source $ZSH/oh-my-zsh.sh

# ** Programming languages version manager ** #
# nvm for node

# jenv for java
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# ** Custom powerlevel 10k ** #
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# ** Other Functions ** #
# Output as yaml
function vaml() {
 vim -R -c 'set syntax=yaml' -;
}

## Google cloud
#export CLOUDSDK_COMPUTE_ZONE=australia-southeast1-a
#export CLOUDSDK_COMPUTE_REGION=australia-southeast1

