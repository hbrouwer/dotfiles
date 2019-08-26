# Export $PATH
case `uname` in
	Darwin)
	export PATH=/opt/local/bin:$PATH
esac 

# Path to oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# Set zsh theme
ZSH_THEME="robbyrussell"

# Load plugins
case `uname` in
        Darwin)
        plugins=(tmux osx fzf z)
        export FZF_BASE=/opt/local/share/fzf
        ;;
        Linux)
        plugins=(tmux z)
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
