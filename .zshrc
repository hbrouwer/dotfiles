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
#tmux set-option -g status-right ""

# Use catppuccin (frappe) in fzf
#export FZF_DEFAULT_OPTS=" \
#--color=bg+:#414559,bg:#303446,spinner:#f2d5cf,hl:#e78284 \
#--color=fg:#c6d0f5,header:#e78284,info:#ca9ee6,pointer:#f2d5cf \
#--color=marker:#f2d5cf,fg+:#c6d0f5,prompt:#ca9ee6,hl+:#e78284"

# Use rose-pine (moon) in fzf
export FZF_DEFAULT_OPTS=" \
--color=fg:#908caa,bg:#232136,hl:#ea9a97 \
--color=fg+:#e0def4,bg+:#393552,hl+:#ea9a97 \
--color=border:#44415a,header:#3e8fb0,gutter:#232136 \
--color=spinner:#f6c177,info:#9ccfd8,separator:#44415a \
--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"
