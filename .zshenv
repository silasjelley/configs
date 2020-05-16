# PATH
export PATH=$PATH:$HOME/Binaries
export PATH=$PATH:$HOME/Projects/Scripts
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.local/bin
# Environment
export EDITOR=nvim
export VISUAL="$EDITOR"
export TERM="alacritty"
export MAKEFLAGS="-j$(nproc)" # Used by arch's makepkg to enable multi-core package building
# Keyring
export GPG_TTY=$(tty) # Tell gnupg where to prompt for pinentry
  eval $(gnome-keyring-daemon --start) # start the keyring daemon

# Files
export BOOKMARKS_FILE="$HOME/Records/Notes/Lists/bookmarks.txt"
export JOURNAL_FILE="$HOME/Records/Memory/journal.txt"
export LEDGER_FILE="$HOME/Records/Ledger/full.ledger"
export QUOTE_FILE="$HOME/Records/Notes/Lists/quotes.txt"
export TODO_FILE="$HOME/Records/Memory/todo.txt"
export MORE_FILE="$HOME/Records/Memory/more.txt"

# Directories
export NOTES_DIR="$HOME/Records/Notes"

# Firefox
export GDK_BACKEND=wayland
export WEBRENDER_QUALIFIED=1
export MOZ_WAYLAND_ENABLED=1
export MOZ_ENABLE_WAYLAND=1
export MOZ_WEBRENDER=1

# Borg
export BORG_REPO="e0qp2z9l@e0qp2z9l.repo.borgbase.com:repo"
export BORG_PASSPHRASE="$(gopass find Systems/Wolfe/Borg/Password | sed '2q;d')"


## Copy environment variables to systemd
mkdir -p $HOME/.config/environment.d
cat .zshenv | head -n -4 | sed 's/export //' > $HOME/.config/environment.d/zshenv.conf
