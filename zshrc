export ZSH=~/.oh-my-zsh
source ~/.aliases
# Theme
ZSH_THEME="powerlevel9k/powerlevel9k"

# POWERLEVEL9K Customizations
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true
# Environment PATH
export PATH=$PATH:~/bin/
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-12.0.1.jdk/Contents/Home

# If you come from bash you might have to change your $PATH.  export
export EDITOR=nvim

export zshrc=~/.zshrc
export vimrc=~/.vimrc
export dotfiles=~/Dropbox/Backups/dotfiles
export PG=~/Library/Application\ Support/Postgres
export CLICOLOR=1
export TERM=xterm-256color-italic        # italic color is required for trueclor in tmux mode

# terraform
export TF_CLI_ARGS_apply="-auto-approve"
export TF_PLUGIN_CACHE_DIR="$HOME/.terraform.d/plugin-cache"

eval "$(rbenv init -)"
eval "$(ssh-agent -s)"

source $ZSH/oh-my-zsh.sh

plugins=(terraform colored-man-pages)

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh
