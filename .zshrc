export ZSH=/Users/mitchellfriedman/.oh-my-zsh

#ZSH_THEME="imajes"
ZSH_THEME=""

plugins=(git)

export PATH="/usr/local/Cellar/php55/5.5.17/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/usr/local/go/bin"

source $ZSH/oh-my-zsh.sh
source $HOME/code/z/z.sh
#source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ~/.zsh/zsh-autosuggestions/autosuggestions.zsh

zle-line-init() {
    #zle autosuggest-start
}
zle -N zle-line-init

alias tmux="TERM=screen-256color-bce tmux"
alias TERM="xterm-256color"

alias va=". venv/bin/activate"
alias gs="git status"
alias push="git push origin master"
alias cl="clear"
alias python="python3"
alias python2="/usr/bin/python2.6"
alias py2kify="unalias python"
alias fire_run="./mach build toolkit/devtools browser && ./mach run"
alias audio="sudo killall coreaudiod"

export PATH="/usr/local/heroku/bin:$PATH"

export GOPATH=$HOME/go

autoload -U promptinit; promptinit

# optionally define some options
PURE_CMD_MAX_EXEC_TIME=10

prompt pure

eval "$(/Users/mitchellfriedman/code/roo/bin/roo init -)"

eval "$(rbenv init -)"
