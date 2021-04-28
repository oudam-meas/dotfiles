# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
zmodload zsh/zprof
export ZSH=~/.oh-my-zsh
export EDITOR=nvim
ZSH_THEME=powerlevel10k/powerlevel10k
DISABLE_UPDATE_PROMPT=true

[[ -f ~/.aliases.zsh ]] && source ~/.aliases.zsh

# ** Environment Paths ** #
export GPG_TTY=$(tty) # fix for GPG - clear-sign failed: Inappropriate ioctl for device
export PYENV_ROOT="$HOME/.pyenv"
export PATH="/bin:/usr/bin:/usr/local/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="$PYENV_ROOT/bin:$PATH"

# export PATH="$HOME/Library/Python/3.7/bin:$PATH"
# export PATH="$HOME/.npm-packages/bin:$PATH"
# export PATH="$HOME/.jenv/bin:$PATH"
# export ANDROID_HOME=~/Library/Android/sdk/
# export PATH="$ANDROID_HOME/tools:$PATH"
# export PATH="$ANDROID_HOME/platform-tools:$PATH"
# export PATH="$ANDROID_HOME/tools/bin:$PATH"

# ** Extra config for nvm ** #
# [[ -f ~/.dotfiles/zsh_configs/nvm.zsh ]] && source ~/.dotfiles/zsh_configs/nvm.zsh

# ** Plugins ** #
plugins=(
  ssh-agent          # eval `ssh-agent` - https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent
  zsh-syntax-highlighting
  zsh-autosuggestions
  alias-finder
  common-aliases
  direnv             # the direnv hook. it eqv to: eval "$(direnv hook zsh)"
  jenv               # init jenv:  eval "$(jenv init -)"
  autojump           # This plugin loads the autojbmp navigation tool
  zsh_reload         # src
  tmux               # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux
  zsh-docker-aliases # https://github.com/akarzim/zsh-docker-aliases\
  colored-man-pages
  aws
  kube-ps1
  asdf
  pyenv
  terraform
  # docker-compose
  # git-extras
  # osx
  # vagrant            # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vagrant
  # thefuck            # use ESC ESC
)

# ** ssh-agent config ** #
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent
# Put these ettings before the line that sources oh-my-zsh
# Work: id_rsa_tw
# Personal: id_rsa
zstyle :omz:plugins:ssh-agent identities id_rsa_tw id_rsa

# ** Fix slowness when paste ** #
[[ -f ~/.dotfiles/zsh_configs/zsh_fix_paste_slowness.zsh ]] && source ~/.dotfiles/zsh_configs/zsh_fix_paste_slowness.zsh

# ** Custom powerlevel 10k ** #
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Start OMZSH
source $ZSH/oh-my-zsh.sh
