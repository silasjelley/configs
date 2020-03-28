# PATH
  export PATH=$PATH:$HOME/Binaries
  export PATH=$PATH:$HOME/Projects/Scripts
  export PATH=$PATH:$HOME/.cargo/bin
  export PATH=$PATH:$HOME/.local/bin
# Environment
  export EDITOR=nvim
  export VISUAL="$EDITOR"
  export LEDGER_FILE="$HOME/Records/Ledger/$(date +%Y).ledger"
  export TERM="alacritty"
# Aliases
  ## Suffixes
  alias -s txt=nvim
  alias -s md=nvim

  ## System
  alias rwifi="nmcli radio wifi off && nmcli radio wifi on"
  #alias pwd="pwd && pwd | wl-copy"
  ## Packages
  alias v="vim"
  alias nv="nvim"
  alias $EDITOR="nvim"
  alias e="$EDITOR"  
  ## Edit Configs
  alias ezsh="$EDITOR $HOME/.zshrc"
  alias rzsh="exec zsh"
  alias evim="$EDITOR $HOME/.vimrc"
  alias envim="$EDITOR $HOME/.config/nvim/init.vim"
  alias evbind="$EDITOR $HOME/.config/nvim/bindings.vim"
  alias evplug="$EDITOR $HOME/.config/nvim/plugins.vim"
  alias evabbr="$EDITOR $HOME/.config/nvim/abbreviations.vim"
  alias evcoc="$EDITOR $HOME/.config/nvim/coc.vim"
  alias ebash="$EDITOR $HOME/.bashrc"
  alias rbash="source $HOME/.bashrc"
  alias esway="$EDITOR $HOME/.config/sway/config"
  alias eswaylock="$EDITOR $HOME/.config/swaylock/config"
  alias ealac="$EDITOR $HOME/.config/alacritty/alacritty.yml"
  alias ekitty="$EDITOR $HOME/.config/kitty/kitty.conf"
  alias ekcols="$EDITOR $HOME/.config/kitty/colors.conf"
  alias ewaybar="$EDITOR $HOME/.config/waybar/config"
  alias ewaycss="$EDITOR $HOME/.config/waybar/style.css"
  alias emako="$EDITOR $HOME/.config/mako/config"
  alias eranger="$EDITOR $HOME/.config/ranger/rc.conf"
  alias erangercom="$EDITOR $HOME/.config/ranger/commands.py"
  alias erifle="$EDITOR $HOME/.config/ranger/rifle.conf"
  alias eimv="$EDITOR $HOME/.config/imv/config"
  alias enewsboat="$EDITOR $HOME/.config/newsboat/config"
  alias enewsboaturls="$EDITOR $HOME/.config/newsboat/urls"
  alias epackages-base="$EDITOR $HOME/Projects/Gather/schemes/fedora/packages-base"
  alias epackages-devel="$EDITOR $HOME/Projects/Gather/schemes/fedora/packages-devel"
  alias epackages-remove="$EDITOR $HOME/Projects/Gather/schemes/fedora/packages-remove"
  alias epackages-sundry="$EDITOR $HOME/Projects/Gather/schemes/fedora/packages-sundry"
  alias epackages-utils="$EDITOR $HOME/Projects/Gather/schemes/fedora/packages-utils"
  ## Package Management
  alias dnfi="sudo dnf install"
  alias dnfr="sudo dnf remove"
  alias dnfu="sudo dnf upgrade"
  ## Arduino
  alias arduino="arduino-cli --config-file $HOME/.config/arduion/arduino-cli.yaml"
  alias arduino-cli="arduino-cli --config-file $HOME/.config/arduion/arduino-cli.yaml"
  alias earduino="$EDITOR $HOME/.config/arduion/arduino-cli.yaml"
  ## Buku
  alias bm="buku"
  alias bma="buku -a"
  alias bms="buku -s"
  ## Git
  alias gc="git commit -S -v $1"
  alias ga="git add $1"
  alias gp="git push -u origin master"
  alias gs="git status"
  alias gr="git reset $1"
  ## Gopass
  alias pass="gopass"
  alias passc="gopass -c"
  alias passi="gopass insert"
  alias passe="gopass edit --create"
  alias passt="exa -TL2 $HOME/.password-store"
  ## Journal
  alias journal="record-journal"
  alias weight="record-health -weight"
  alias slept="record-health -sleep"
  ## Newsboat
  alias nb="newsboat"
  ## Task
  alias t="task"
  alias ta="task add"
  alias tl="task log"
  alias td="task done"
  alias ts="task sync"
  alias tm="task modify"
  alias todo="task due or scheduled:today"
  alias chore="task add project:Evans +Chores"
  alias urgent="task add +Reminder +Urgent due:today"
  alias remind="task add +Reminder" 
  alias tcloud="task add project:Cloud +Config"
  alias twolfe="task add project:Wolfe +Config"
  alias tpanda="task add project:Panda +Config"
  alias tsefna="task add project:Sefna +Cloud"
  alias tevans="task add project:Evans"
  ## Time
  alias tw="timew"
  #  ## Youtube-DL
  alias ydl="youtube-dl"
  ## Misc
  alias music="pgrep spotifyd | xargs kill && spotifyd && spt"
  alias epoch="date +%s"

# Options
  setopt always_to_end          # Move the cursor to the end of the word after each completion.
  setopt auto_cd                # If command is a path, cd into it.
  setopt cdable_vars            # Add '$HOME' to every cd commands which the argument is not a directory and does not begin with a slash.
  setopt combining_chars        # Display combining characters correctly.
  setopt extended_history       # Save each command's beginning timestamp and the duration to the history file.
  setopt glob_dots              # Include dotfiles in globbing.
  setopt hist_find_no_dups      # When searching for history entries in the line editor, do not display duplicates of a line previously found.
  setopt hist_ignore_all_dups   # Avoid duplication when adding a new command.
  setopt interactive_comments   # Allow comments even in interactive shells.
  setopt notify                 # Report the status of background jobs immediately, rather than waiting until just before printing a prompt.
  setopt share_history          # Import new commands from the history file, and append typed commands to the history file.

# The following lines were added by compinstall

#zstyle ':completion:*' menu select completer _expand _complete _ignored _correct _approximate
#zstyle :compinstall filename '$HOME/.zshrc'

#autoload -Uz compinit
#compinit
# End of lines added by compinstall

# History

HISTFILE=$HOME/.zsh_history
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
#antigen buddndle git
#antigen bundle pip
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

[ -f $HOME/.resh/shellrc ] && source $HOME/.resh/shellrc
