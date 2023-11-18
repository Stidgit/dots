export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="kardan"

plugins=(git)
source $ZSH/oh-my-zsh.sh

alias v='nvim'
alias rr='ranger'
alias shot='flameshot gui'
alias pac='sudo pacman'

if [ -z "$SSH_AGENT_PID" ]; then
  eval $(ssh-agent)
  ssh-add ~/.ssh/id_ed25519
fi

