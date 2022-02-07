alias af='alias-finder'
alias vim=nvim
alias vimm=mvim
alias watch='watch '
alias cat='bat --paging=never'
alias ide='idea -e'
alias k9='k9s'
alias tm='tmux'
alias cl='clear'
alias lc='colorls -lA --sd'
alias da='direnv allow .'
alias ez='exec zsh'
alias asdfi='asdf install .'
alias ssm='aws ssm start-session --target'

alias preview="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

alias eal='vim ~/.aliases.zsh'
alias erc='vim ~/.zshrc'
alias evimrc="vim ~/.SpaceVim.d/"
alias eerc="vim ~/.dotfiles/.export_vars.zsh"
alias egitignore='nvim ~/.gitignore_global'
alias egit='nvim ~/.gitconfig'
alias grep='grep --color'

alias vfz='vim $(fzf)'

alias show_inet="ifconfig | grep 'inet ' | grep -v 'inet 127'"
alias inet="show_inet && show_inet | pbcopy"
alias ctags="`brew --prefix`/bin/ctags"

# Project
alias mi="make init"
alias mp="make plan"
alias map="make apply"

alias k='kubectl'
alias x="kubectx"
alias n="kubens"

alias ji="jira"

# kubectl hisg
alias kcbff='kubectl get config -n bff h365-bff -o yaml'
alias kla='kubectl logs -l  app.kubernetes.io/name=pph-svc-activity -c pph-svc-activity -n services -f'
alias klrw='kubectl logs -l  app.kubernetes.io/name=pph-svc-reward -c pph-svc-reward -n services -f'
alias klreward='klrw'
alias kluser='kubectl logs -l  app.kubernetes.io/name=pph-svc-user -c pph-svc-user -n services -f'
alias klbff='kubectl logs -l  app.kubernetes.io/name=hisg-bff -c hisg-bff -n bff -f'
alias klc='kubectl logs -l  app.kubernetes.io/name=pph-svc-challenge -c pph-svc-challenge -n services -f'
alias klfb='kubectl logs -l  app.kubernetes.io/name=pph-svc-fitbit -c pph-svc-fitbit -n services -f'
alias klg='kubectl logs -l  app.kubernetes.io/name=pph-svc-group -c pph-svc-group -n services -f'
alias klhisgbff='kubectl logs -l  app.kubernetes.io/name=hisg-bff -c hisg-bff -n bff -f'
alias klhisgwbff='kubectl logs -l  app.kubernetes.io/name=hisg-web-portal-bff -c hisg-web-portal-bff -n bff -f'
alias kln='kubectl logs -l  app.kubernetes.io/name=pph-svc-notification -c pph-svc-notification -n services -f'
alias kls='kubectl logs -l  app.kubernetes.io/name=pph-svc-survey -c pph-svc-survey -n services -f'
alias ksa='kubectl get secret -n services pph-svc-activity -o yaml'
alias ksbff='kubectl get secret -n bff h365-bff -o yaml'
alias ksc='kubectl get secret -n services pph-svc-challenge -o yaml'
alias ksfb='kubectl get secret -n services pph-svc-fitbit -o yaml'
alias ksg='kubectl get secret -n services pph-svc-group -o yaml'
alias kss='kubectl get secret -n services pph-svc-survey -o yaml'
alias build_node4k8s='docker rmi $(docker images outdammeas/node4k8s -q) -f && init_current && docker build . -t outdammeas/node4k8s:latest && docker tag outdammeas/node4k8s:latest outdammeas/node4k8s:${CURRENT}'
alias wave='kubectl port-forward -n weave "$(kubectl get -n weave pod --selector=weave-scope-component=app -o jsonpath='{.items..metadata.name}')" 4040'

alias scrcpy_connect='adb connect 192.168.1.149:5555'
alias rn_cc='watchman watch-del-all && rm -rf $TMPDIR/react-* && npm start -- --reset-cache'
alias ydl='youtube-dl'
alias v='vagrant'
alias doc_tmux="open https://github.com/gpakosz/.tmux"

# AWS cli
alias aws_set_profile="asp"
alias aws_config_profile="acp"
alias aws_get_profile="agp"
alias aws_get_profiles="aws_profiles"

# Project
## login to ndi ami
# /usr/local/bin/..
alias login_oea_aws="aws_authenticate_mfa.sh"
alias idea_ndi="idea /Users/outdam/Work/Repos/NDI/"

# Python
alias pytest="python -m pytest"

# Switch git useremail
alias git_set_user_outdam="git config --global user.name 'Outdam Meas' && git config --global user.email 'mstdam@gmail.com'"
alias git_set_user_outdam_tw="git config --global user.name 'Outdam Meas' && git config --global user.email 'outdam.meas@thoughtworks.com'"

alias ep10k="vim ~/.p10k.zsh"
