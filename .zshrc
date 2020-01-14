plugins=(git)

export PATH="/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/usr/local/go/bin:$HOME/.rvm/bin:/Users/mitch/.pyenv"
export GOPATH=$HOME/go
export ZSH=/Users/Mitch/.oh-my-zsh
export ZSH_THEME="spaceship"

source $ZSH/oh-my-zsh.sh
source $HOME/code/z/z.sh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias tmux="TERM=screen-256color-bce tmux"
alias TERM="xterm-256color"
alias va=". venv/bin/activate"
alias gs="git status"
alias cl="clear"
alias reset-touchbar=killall ControlStrip

autoload -U promptinit; promptinit
prompt pure

eval "$(pyenv init -)"

