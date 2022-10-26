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

# Use catppuccin (mocha) in fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
