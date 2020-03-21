plugins=(git)

export PATH="/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/usr/local/go/bin:$HOME/.rvm/bin:/Users/mitch/.pyenv"
export GOPATH=$HOME/go

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

source $HOME/code/z/z.sh

alias va=". venv/bin/activate"
alias gs="git status"
alias cl="clear"
alias reset-touchbar="killall ControlStrip"

eval "$(pyenv init -)"

function precmd() {
    window_title="\\033]0;${PWD##*/}\\007"
    echo -ne "$window_title"
}

autoload -U promptinit; promptinit
prompt pure

zmodload zsh/nearcolor
zstyle :prompt:pure:path color '#fea64a'
zstyle :prompt:pure:git:branch color '#b7d6f7'
