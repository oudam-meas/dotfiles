export ZSH=~/.oh-my-zsh
source ~/.aliases
source ~/.env

# ** ZSH ** #
ZSH_THEME=powerlevel10k/powerlevel10k
DISABLE_UPDATE_PROMPT=true
VSCODE=code-insiders

# ** Environment Paths ** #
# /usr/local/opt/openjdk/bin/java
export ANDROID_HOME=~/Library/Android/sdk/

export PATH="/bin:/usr/bin:/usr/local/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export PATH="$HOME/Library/Python/3.7/bin:$PATH"
export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/tools/bin:$PATH"
# ** NPM **
export PATH="$HOME/.npm-packages/bin:$PATH"
# ** JENV **
export PATH="$HOME/.jenv/bin:$PATH"
# ** RVM Must be the last **
export PATH="$HOME/.rvm/bin:$PATH"


# ** Basic Config ** #
export EDITOR=nvim
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

# TMUX color in Iterm [To remove]
# export TERM=xterm-256color-italic        # italic color is required for trueclor in tmux mode
# unset LSCOLORS
# export CLICOLOR=1
# export CLICOLOR_FORCE=1

# ** Plugins ** #
plugins=(
  terraform
  ssh-agent #eval `ssh-agent` - https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent
  zsh-syntax-highlighting
  docker
  docker-compose
  kubectl
  zsh-autosuggestions
  alias-finder
  common-aliases
  direnv # the direnv hook. it eqv to: eval "$(direnv hook zsh)"
  jenv   # init jenv:  eval "$(jenv init -)"
  autojump # This plugin loads the autojump navigation tool
  git-extras
  osx
  rvm
  thefuck # use ESC ESC
  vagrant # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vagrant
  zsh_reload # src
  vscode # VSCODE=code-insiders, https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vscode
  tmux #https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux
  tmuxinator
  aws
)

# ** ssh-agent config ** #
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent
# Work: id_rsa_tw
# Personal: id_rsa
zstyle :omz:plugins:ssh-agent identities id_rsa_tw id_rsa

# Start OMZSH
source $ZSH/oh-my-zsh.sh

# ** Custom powerlevel 10k ** #
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
if [[ -s $HOME/.rvm/scripts/rvm ]]; then
  source $HOME/.rvm/scripts/rvm;
fi

alias rni="kill $(lsof -t -i:8081); rm -rf ios/build/; rm -rf ios/pods; npm run pod-install; npm run ios"
