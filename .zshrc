#### General configuration

# Export $PATH
case `uname` in
	Darwin)
	export PATH=/opt/local/bin:$PATH
esac 

# Path to oh-my-zsh
case `uname` in
        Darwin)
        export ZSH="/Users/harm/.oh-my-zsh"
        ;;
        Linux)
        export ZSH="/home/harm/.oh-my-zsh"
esac

# Set zsh theme
ZSH_THEME="robbyrussell"

# Load plugins
case `uname` in
        Darwin)
        plugins=(git tmux iterm2 osx macports)
        ;;
        Linux)
        plugins=(git tmux)
esac

# Autostart tmux
ZSH_TMUX_AUTOSTART="true"

# Source oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh

#### User configuration

# Set language environment
export LANG=en_US.UTF-8

# Set preferred editor
export EDITOR="nvim"
