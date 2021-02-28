export ZSH=~/.oh-my-zsh
source ~/.aliases

# ** ZSH THEME ** #
ZSH_THEME=powerlevel10k/powerlevel10k

# ** Environment Paths ** #
# /usr/local/opt/openjdk/bin/java
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/Library/Python/3.7/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export PATH=~/Library/Android/sdk/tools:$PATH
export PATH=~/Library/Android/sdk/platform-tools:$PATH
export PATH=~/Library/Android/sdk/tools/bin:$PATH
export PATH=$PATH:./bin

# ** Basic Config ** #
export EDITOR=nvim
export zshrc=~/.zshrc
export vimrc=~/.vimrc
export dotfiles=~/Dropbox/Backups/dotfiles
export PG=~/Library/Application\ Support/Postgres
export JMETER_HOME=/usr/local/Cellar/jmeter/5.2/libexec/bin/
export ANDROID_HOME=~/Library/Android/sdk/


# ** Evaluate plugins ** #
export TERM=xterm-256color-italic        # italic color is required for trueclor in tmux mode
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

# ** NPM **
NPM_PACKAGES="${HOME}/.npm-packages"

export PATH="$PATH:$NPM_PACKAGES/bin"

# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

# ** Plugins ** #
plugins=(
  ssh-agent
  zsh-syntax-highlighting
  docker
  docker-compose
  kubectl
)

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# fpath=($(brew --prefix)/share/zsh-completions $fpath)
# autoload -U compinit
# compinit

# ** Evaluate plugins ** #
eval "$(rbenv init -)"
eval "$(direnv hook zsh)"


# ** Programming languages version manager ** #
# nvm for node

# jenv for java
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

source $ZSH/oh-my-zsh.sh

eval `ssh-agent`

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
source ~/.env

# export HEAD=$(git rev-parse --short HEAD)
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# [Disabled] Maven using openjdk
# export CPPFLAGS="-I/usr/local/opt/openjdk/include"
# export PATH="/usr/local/opt/openjdk/bin:$PATH"

# export TOMCAT="/usr/local/Cellar/tomcat/9.0.36"
# export CATALICA_HOME="/usr/local/Cellar/tomcat/9.0.36/libexec"
alias rni="kill $(lsof -t -i:8081); rm -rf ios/build/; rm -rf ios/pods; npm run pod-install; npm run ios"

