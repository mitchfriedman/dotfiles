export ZSH=/Users/Mitch/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

export PATH="/usr/local/Cellar/php55/5.5.17/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/Users/Mitch/.composer/vendor/bin"

source $ZSH/oh-my-zsh.sh
source $HOME/code/z/z.sh

source ~/.zsh/zsh-autosuggestions/autosuggestions.zsh

zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

alias tmux="TERM=screen-256color-bce tmux"
alias TERM="xterm-256color"

alias va=". venv/bin/activate"
alias gs="git status"
alias push="git push origin master"
alias cl="clear"
alias python="python3"

export PATH="/usr/local/heroku/bin:$PATH"

