# Export $PATH
export PATH=$HOME/bin:$PATH
case `uname` in
	Darwin)
	export PATH=/opt/local/bin:$PATH
esac 

# Path to oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# Set zsh theme
ZSH_THEME="sorin"

# Load plugins
case `uname` in
        Darwin)
        plugins=(tmux macos fzf z)
        export TERM=screen-256color
        export FZF_BASE=/opt/local/share/fzf
        ;;
        Linux)
        plugins=(tmux fzf z)
esac

# Autostart tmux
ZSH_TMUX_AUTOSTART="true"

# Source oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh

# Set language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Set preferred editor
export EDITOR="nvim"

# Disable tmux status-right (for catppuccin)
tmux set-option -g status-right ""
