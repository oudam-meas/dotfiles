# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

DISABLE_UPDATE_PROMPT=true

zmodload zsh/zprof
export EDITOR=nvim      # default editor
export GPG_TTY=$(tty)   # fix for GPG - clear-sign failed: Inappropriate ioctl for device
export ZSH=~/.oh-my-zsh # change ZSH variable
export LESS='-R'
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

ZSH_THEME="powerlevel10k/powerlevel10k"

export jb_preferences_intellijidea="IntelliJIdea"

# ** Aliases ** #
[[ -f ~/.aliases.zsh ]] && source ~/.aliases.zsh

# ** Environment Paths ** #
[[ -f ~/.dotfiles/.export_vars.zsh ]] && source ~/.dotfiles/.export_vars.zsh

# ** Plugins ** #

eval "$(direnv hook zsh)"

plugins=(
  ssh-agent          # eval `ssh-agent` - https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent
  zsh-syntax-highlighting
  zsh-autosuggestions
  autojump           # This plugin loads the autojbmp navigation tool
  tmux               # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux
  colored-man-pages
  aws
  kube-ps1
  asdf
  thefuck            # use ESC ESC

  # alias-finder
  # jenv               # init jenv:  eval "$(jenv init -)"
  # git
  # jira

  # Disabled due to slowness #
  # direnv             # the direnv hook. it eqv to: eval "$(direnv hook zsh)"
)

zle_highlight=(default:bold) # make valid command bold

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

batdiff() {
    git diff --name-only --diff-filter=d | xargs bat --diff
}
# Start OMZSH
source $ZSH/oh-my-zsh.sh
# export PATH="/usr/local/opt/openssl@3/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
