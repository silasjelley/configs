# PATH
  export PATH=$PATH:$HOME/Binaries
  export PATH=$PATH:$HOME/Projects/Scripts
  export PATH=$PATH:$HOME/.cargo/bin

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
  alias evbind="editor ~/.config/nvim/bindings.vim"
  alias evplug="editor ~/.config/nvim/plugins.vim"
  alias evabbr="editor ~/.config/nvim/abbreviations.vim"
  alias evcoc="editor ~/.config/nvim/coc.vim"
  alias ebash="editor ~/.bashrc"
  alias rbash="source ~/.bashrc"
  alias esway="editor ~/.config/sway/config"
  alias eswaylock="editor ~/.config/swaylock/config"
  alias ealac="editor ~/.config/alacritty/alacritty.yml"
  alias ekitty="editor ~/.config/kitty/kitty.conf"
  alias ekcols="editor ~/.config/kitty/colors.conf"
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

# Options
  setopt always_to_end          # Move the cursor to the end of the word after each completion.
  setopt auto_cd                # If command is a path, cd into it.
  setopt cdable_vars            # Add '~' to every cd commands which the argument is not a directory and does not begin with a slash.
  setopt combining_chars        # Display combining characters correctly.
  setopt extended_history       # Save each command's beginning timestamp and the duration to the history file.
  setopt glob_dots              # Include dotfiles in globbing.
  setopt hist_find_no_dups      # When searching for history entries in the line editor, do not display duplicates of a line previously found.
  setopt hist_ignore_all_dups   # Avoid duplication when adding a new command.
  setopt interactive_comments   # Allow comments even in interactive shells.
  setopt notify                 # Report the status of background jobs immediately, rather than waiting until just before printing a prompt.
  setopt share_history          # Import new commands from the history file, and append typed commands to the history file.

# The following lines were added by compinstall

zstyle ':completion:*' menu select completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/silas/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# History

HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=10000
setopt hist_ignore_space
setopt appendhistory

# Vim Style
bindkey -v

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

# Install Starship prompt if not 
#curl -fsSL https://starship.rs/install.sh | sudo bash
# Enable Startship Prompt (Installed Seperately
#eval "$(starship init zsh)"

[ -f ~/.resh/shellrc ] && source ~/.resh/shellrc
