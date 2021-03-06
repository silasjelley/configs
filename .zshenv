# PATH
export PATH="$HOME/projects/scripts:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.npm/bin:$PATH"
# Environment
export TERM="xterm-256color"
export EDITOR="nvim"
export VISUAL="$EDITOR"
export MAKEFLAGS="-j$(nproc)" # Used by arch's makepkg to enable multi-core package building
# Keyring
export GPG_TTY=$(tty) # Tell gnupg where to prompt for pinentry
#  eval $(gnome-keyring-daemon --start) # start the keyring daemon

# Files
export JOURNAL_LIFE="$HOME/journal/life.txt"
export JOURNAL_WEEKLY="$HOME/journal/weekly.txt"
export JOURNAL_DAILY="$HOME/journal/daily.txt"
export JOURNAL_HOURLY="$HOME/journal/hourly.txt"
export LEDGER_FILE="$HOME/ledger/full.ledger"
export QUOTE_FILE="$HOME/notes/lists/quotes.txt"
export LINKS_FILE="$HOME/notes/lists/links.txt"
export TODO_FILE="$HOME/journal/todo.txt"
export MORE_FILE="$HOME/journal/more.txt"

# Directories
export NOTES_DIR="$HOME/notes"
export LOG_DIR="$HOME/archive/systems/logs"

# Firefox
export GDK_BACKEND=wayland
export WEBRENDER_QUALIFIED=1
export MOZ_WAYLAND_ENABLED=1
export MOZ_ENABLE_WAYLAND=1
export MOZ_WEBRENDER=1

# Borg
# export BORG_REPO="$(gopass show keys/wolfe/borg/url)"

# Workaround to enable tray in waybar
export XDG_CURRENT_DESKTOP="Unity"

## Copy environment variables to systemd
mkdir -p $HOME/.config/environment.d
cat $HOME/.zshenv | head -n -4 | sed 's/export //' > $HOME/.config/environment.d/zshenv.conf
