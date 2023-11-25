export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="kardan"

plugins=(git)
source $ZSH/oh-my-zsh.sh

alias v='nvim'
alias rr='ranger'
alias pac='sudo pacman'
alias normal='xrandr --output DP-2 --mode 1920x1080 --rate 165'
alias sd='sudo shutdown -h now'
alias read='zathura'
