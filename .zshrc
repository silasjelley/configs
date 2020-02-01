# Startup
  export EDITOR=nvim
  export VISUAL="$EDITOR"
# Aliases
  ## Packages
  alias v="vim"
  alias nv="nvim"
  alias editor="nvim"
  alias e="editor"  
  ## Edit Configs
  alias ezsh="editor ~/.zshrc"
  alias rzsh="source ~/.zshrc"
  alias evim="editor ~/.vimrc"
  alias envim="editor ~/.config/nvim/init.vim"
  alias ebash="editor ~/.bashrc"
  alias rbash="source ~/.bashrc"
  alias esway="editor ~/.config/sway/config"
  alias eswaylock="editor ~/.config/swaylock/config"
  alias ealac="editor ~/.config/alacritty/alacritty.yml"
  alias ewaybar="editor ~/.config/waybar/config"
  alias ewaycss="editor ~/.config/waybar/style.css"
  alias emako="editor ~/.config/mako/config"
  alias eranger="editor ~/.config/ranger/rc.conf"
  alias erangercom="editor ~/.config/ranger/commands.py"
  alias erifle="editor ~/.config/ranger/rifle.conf"
  alias eimv="editor ~/.config/imv/config"
  ## Package Management
  alias dnfi="sudo dnf install"
  alias dnfr="sudo dnf remove"
  alias dnfu="sudo dnf upgrade"
  ## Task
  alias t="task"
  alias ta="task add"
  alias tl="task log"
  alias td="task done"
  alias tm="task modify"
  alias grind="task add project:Grind"
  alias shanty="task add project:Shanty"
  alias urgent="task add +Reminder due:today"
  alias remind="task add +Reminder" 
  alias twolfe="task add project:Config +Wolfe"
  alias tpanda="task add project:Config +Panda"
  ## Misc
  alias music="pgrep spotifyd | xargs kill && spotifyd && spt"

# The following lines were added by compinstall

zstyle ':completion:*' menu select completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/silas/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# ZSH History

HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=10000
setopt hist_ignore_space
setopt extended_history
setopt appendhistory
setopt share_history


# Vim Style
bindkey -v

# Add Custom Directories to PATH
export PATH=$PATH:$HOME/Binaries:$HOME/Projects/Scripts:$HOME/.cargo/bin

# Antigen Config
source $HOME/Binaries/antigen.zsh

## Packages
antigen use oh-my-zsh

antigen bundle z
antigen bundle git
antigen bundle pip
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

## Theming
antigen theme denysdovhan/spaceship-prompt

antigen apply

