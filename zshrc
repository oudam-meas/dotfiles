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
export OTP_ENCRYPTION_KEY=00a423caa01fdc733b93a3fa1e81c128577fd4b43b9a18b79eee092e129a30947caca06fd488fe13c5f438766fe0c7ed875f5d448cd1d4d1a990a3913d27376d
export TERM=xterm-256color-italic        # italic color is required for trueclor in tmux mode
# export TERM=xterm-256color

source $ZSH/oh-my-zsh.sh
source "$HOME/.aws-secret"
source "$HOME/.rails-secret"

# Aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Environment PATH
export PATH=$PATH:~/bin/
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"

# Plugins
plugins=(
  git
)

#########################
# Plugin Customizations
#########################
# Eval Plugins
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
eval "$(direnv hook zsh)"
eval $(thefuck --alias)
# eval `gdircolors ~/.oh-my-zsh/custom/plugins/dircolors-solarized/dircolors.ansi-dark` # ls coloring

# Tmux
export TMUXIFIER_LAYOUT_PATH="$HOME/.tmux-layouts"
eval "$(tmuxifier init -)"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
