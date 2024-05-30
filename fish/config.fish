if status is-interactive
	set fish_greeting
end

# Aliases
alias apps="echo && pacman -Slq | fzf --multi --preview-window=right,60%  --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias hx="helix"
alias pac="sudo pacman"
