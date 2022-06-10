
export PATH="/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/usr/local/go/bin:$HOME/.rvm/bin:/Users/mitch/.pyenv"

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

source $HOME/code/z/z.sh

eval "$(pyenv init --path)"

function precmd() {
    window_title="\\033]0;${PWD##*/}\\007"
    echo -ne "$window_title"
}

autoload -U promptinit; promptinit
prompt pure

zmodload zsh/nearcolor
zstyle :prompt:pure:path color '#fea64a'
zstyle :prompt:pure:git:branch color '#b7d6f7'

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

eval "$($HOME/code/sub/bin/sub init -)"
plugins=(
    git
    osx
)
autoload -U compinit && compinit

alias va=". ./venv/bin/activate"
alias gs="git status"
alias cl="clear"
alias reset-touchbar="killall ControlStrip"

alias git-clean='git branch --merged | egrep -v "(^\*|master|staging)" | xargs git branch -d'
alias gpush="git push"
alias gpff="git push -f"
alias gco="git checkout"
alias gpull="git pull"
alias grb="git rebase origin/master"
alias gca="git commit -a"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
