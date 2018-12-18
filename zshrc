# Theme
ZSH_THEME="powerlevel9k/powerlevel9k"

# POWERLEVEL9K Customizations
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true

# If you come from bash you might have to change your $PATH.  export
export EDITOR=nvim
export ZSH=~/.oh-my-zsh
export zshrc=~/.zshrc
export vimrc=~/.vimrc
export dotfiles=~/Dropbox/Backups/dotfiles
export PG=~/Library/Application\ Support/Postgres
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export OTP_ENCRYPTION_KEY=00a423caa01fdc733b93a3fa1e81c128577fd4b43b9a18b79eee092e129a30947caca06fd488fe13c5f438766fe0c7ed875f5d448cd1d4d1a990a3913d27376d
export TERM=xterm-256color-italic        # italic color, it's required with trueclor and tmux mode

source $ZSH/oh-my-zsh.sh
source "$HOME/.aws-secret"
source "$HOME/.rails-secret"

# Aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Environment PATH
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
export PATH=$PATH:~/bin/
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"

# Tmux
export TMUXIFIER_LAYOUT_PATH="$HOME/.tmux-layouts"
eval "$(tmuxifier init -)"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Plugins
plugins=(
  git
)

#########################
# Plugin Customizations
#########################
# Evel Plugins
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
eval "$(direnv hook zsh)"
eval $(thefuck --alias)
# ls coloring
eval `gdircolors ~/.oh-my-zsh/custom/plugins/dircolors-solarized/dircolors.ansi-dark`

# DOCKER
BUILDID="build-$RANDOM"
INSTANCE="travisci/ci-garnet:packer-1512502276-986baf0"
export PATH="$HOME/.nenv/bin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
