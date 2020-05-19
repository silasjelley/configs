# Autostart sway
#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#  XKB_DEFAULT_LAYOUT=us exec sway
#fi

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
  alias e="$EDITOR"  
  ## Package Management
  # pacman
  alias pkg="sudo pacman -S --needed"
  alias pkgr="sudo pacman -Rs"
  alias pkgs="pacman -Ss"
  alias pkgq="pacman -Qqs"
  # DNF
  alias dnfi="sudo dnf install"
  alias dnfr="sudo dnf remove"
  alias dnfu="sudo dnf upgrade"
  ## Edit Configs
  alias ezsh="$EDITOR $HOME/.zshrc"
  alias eenv="$EDITOR $HOME/.zshenv"
  alias rzsh="exec zsh"
  alias evim="$EDITOR $HOME/.vimrc"
  alias envim="$EDITOR $HOME/.config/nvim/init.vim"
  alias evbind="$EDITOR $HOME/.config/nvim/bindings.vim"
  alias evplug="$EDITOR $HOME/.config/nvim/plugins.vim"
  alias evabbr="$EDITOR $HOME/.config/nvim/abbreviations.vim"
  alias evfunc="$EDITOR $HOME/.config/nvim/functions.vim"
  alias evtheme="$EDITOR $HOME/.config/nvim/colors/theme.vim"
  alias evcoc="$EDITOR $HOME/.config/nvim/coc.vim"
  alias ebash="$EDITOR $HOME/.bashrc"
  alias rbash="source $HOME/.bashrc"
  alias esway="$EDITOR $HOME/.config/sway/config"
  alias eswaylock="$EDITOR $HOME/.config/swaylock/config"
  alias ealac="$EDITOR $HOME/.config/alacritty/alacritty.yml"
  alias ewaybar="$EDITOR $HOME/.config/waybar/config"
  alias ewaycss="$EDITOR $HOME/.config/waybar/style.css"
  alias emako="$EDITOR $HOME/.config/mako/config"
  alias eranger="$EDITOR $HOME/.config/ranger/rc.conf"
  alias erangercom="$EDITOR $HOME/.config/ranger/commands.py"
  alias erifle="$EDITOR $HOME/.config/ranger/rifle.conf"
  alias eimv="$EDITOR $HOME/.config/imv/config"
  alias enewsboat="$EDITOR $HOME/.config/newsboat/config"
  alias enewsboaturls="$EDITOR $HOME/.config/newsboat/urls"
  alias effxchrome="$EDITOR $HOME/.mozilla/firefox/silasjelley/chrome/userChrome.css"
  alias effxcontent="$EDITOR $HOME/.mozilla/firefox/silasjelley/chrome/userContent.css"
  alias epackages-base="$EDITOR $HOME/Records/Notes/Systems/Wolfe/packages-base"
  alias epackages-devel="$EDITOR $HOME/Records/Notes/Systems/Wolfe/packages-devel"
  alias epackages-remove="$EDITOR $HOME/Records/Notes/Systems/Wolfe/packages-remove"
  alias epackages-sundry="$EDITOR $HOME/Records/Notes/Systems/Wolfe/packages-sundry"
  alias epackages-utils="$EDITOR $HOME/Records/Notes/Systems/Wolfe/packages-utils"
  ## Arduino
  alias arduino="arduino-cli --config-file $HOME/.config/arduion/arduino-cli.yaml"
  alias arduino-cli="arduino-cli --config-file $HOME/.config/arduion/arduino-cli.yaml"
  alias earduino="$EDITOR $HOME/.config/arduion/arduino-cli.yaml"
  ## Buku
  #alias bma="buku -a"
  #alias bms="buku -s"
  ## Git
  alias gc="git commit -S -v $1"
  alias ga="git add $1"
  alias gp="git push -u origin master"
  alias gs="git status"
  alias gr="git reset $1"
  alias gl="git log"
  alias grr="git reset 'HEAD@{1}'"
  ## Gopass
  alias pass="gopass"
  alias passc="gopass -c"
  alias passi="gopass insert"
  alias passe="gopass edit --create"
  alias passg="gopass generate"
  alias passt="exa -TD $HOME/.password-store"
  alias pm="gopass move"
  alias pe="gopass edit --create"
  ## Journaling / Record Keeping
  #alias journal="record-journal"
  alias weight="record-health -weight"
  alias slept="record-health -sleep"
  alias quote="record-quote"
  alias note="record-note"
  alias log="$EDITOR $HOME/Records/Memory/time.txt"
  alias more="$EDITOR $MORE_FILE"
  alias bm="$EDITOR $BOOKMARKS_FILE"
  ## Ledger
  alias groceries="hledger -f ~/Records/Ledger/Groceries/groceries.ledger"
  ## Newsboat
  alias nb="newsboat"
  ## Tasks
  alias t="task"
  #alias ta="task add"
  #alias tl="task log"
  #alias td="task done"
  #alias ts="task sync"
  #alias tm="task modify"
  #alias todo="task due or scheduled:today"
  #alias chore="task add project:Evans +Chores"
  #alias urgent="task add +Reminder +Urgent due:today"
  #alias remind="task add +Reminder" 
  #alias tcloud="task add project:Cloud +Config"
  #alias twolfe="task add project:Wolfe +Config"
  #alias tpanda="task add project:Panda +Config"
  #alias tsefna="task add project:Sefna +Cloud"
  #alias tevans="task add project:Evans"
  alias todo="$EDITOR $TODO_FILE"
  alias moretodo="$EDITOR $MORE_FILE"
  ## Time
  alias tw="timew"
  #  ## Youtube-DL
  alias ydl="youtube-dl"
  ## Misc
  alias epoch="date +%s"
  alias blogtree="exa -TL1 --group-directories-first --ignore-glob=\"Caddyfile|node_modules|package*\" $HOME/Projects/Blog"

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

# Prevent .zcompdump files cluterring ~/
autoload -Uz compinit
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION

# History

HISTFILE=$HOME/.zsh_history
HISTSIZE=5000000
SAVEHIST=5000000
setopt hist_ignore_space
setopt appendhistory

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

# Vim Style
# bindkey -v
