# If you come from bash you might have to change your $PATH.  export
# PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=~/.oh-my-zsh
export ZSHRC=~/.zshrc
export VIMRC=~/.vimrc
export DOTFILES=~/Dropbox/Backups/dotfiles
export PG=~/Library/Application\ Support/Postgres
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export OTP_ENCRYPTION_KEY=00a423caa01fdc733b93a3fa1e81c128577fd4b43b9a18b79eee092e129a30947caca06fd488fe13c5f438766fe0c7ed875f5d448cd1d4d1a990a3913d27376d
# export TERM=xterm-256color-italic        # for common 256 color terminals (e.g. gnome-terminal)
# export TERM=screen-256color       # for a tmux -2 session (also for screen)

# Custom POWERLEVEL9K Theme
ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
  git
  rails
  ruby
)

eval `gdircolors ~/.oh-my-zsh/custom/plugins/dircolors-solarized/dircolors.ansi-dark`
source $ZSH/oh-my-zsh.sh

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Envinronment path
export EDITOR=vim

export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
export PATH=$PATH:~/bin/
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"

export TMUXIFIER_LAYOUT_PATH="$HOME/.tmux-layouts"
eval "$(tmuxifier init -)"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# Aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Plugin
eval "$(direnv hook zsh)"
eval $(thefuck --alias)
#########################
# Plugin Customizatins
#########################
POWERLEVEL9K_RBENV_PROMPT_ALWAYS_SHOW=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# DOCKER
BUILDID="build-$RANDOM"
INSTANCE="travisci/ci-garnet:packer-1512502276-986baf0"
