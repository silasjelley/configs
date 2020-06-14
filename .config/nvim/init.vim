" Source Configs
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/bindings.vim
source ~/.config/nvim/abbreviations.vim
source ~/.config/nvim/functions.vim
source ~/.config/nvim/coc.vim

" Statusline
set statusline=%#NonText#                       " text color
set statusline+=\ \                             " padding
set statusline+=%.40F                           " full path truncated to 40 chars
set statusline+=%#Statement#%.3m%*%#NonText#\   " modified status in red
set statusline+=%=                              " switch right side
set statusline+=\ %4l/%-4L\ %p%%                " line count and percentage
set statusline+=\ %3c                           " char number
set statusline+=\ \ \                           " padding


set showcmd             " Show (partial) command in status line
set showmode            " Show current mode
set showmatch           " Show matching bracket on insertion (jump there and back)
set smartcase           " Overide 'ignorecase' if capital are present
set ignorecase          " Ignore case when searching
set splitbelow          " Default split below
set splitright          " Default split right
set updatetime=300      " Rapidly write changes to swap
scriptencoding utf-8    " Set encoding for vim scripts

set mouse=a             " Enable mouse
" set textwidth=80      " Hard wrap long lines as you type them
set scrolloff=3         " Show next 3 lines while scrolling
set sidescrolloff=5     " Show next 5 columns while side-scrolling
set number              " Enable line numbers
set numberwidth=3       " Always make space line numbers of length 3

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab           " Automatically expand tabs into spaces

" Enable spellcheck
set spelllang=en_gb
set spellfile=~/.config/nvim/spelling.vim/en.utf-8.add

" Enable true color support
set termguicolors
" Theme
syntax enable           " Enable syntax highlighting rules
colorscheme theme       " Set colorscheme

" Sync clipboard with system
set clipboard+=unnamedplus

" Highlight the current line
set ruler
set cursorline
hi CursorLine term=bold cterm=bold gui=bold 

" Hide tildes from file end
set fcs=eob:\ 

" Don't let autocomplete affect usual typing habits
set completeopt=menuone,preview,noinsert

" Syntax highlighting and rules for specific files
" autocmd BufNewFile,BufRead *.txt Limelight | set spell
autocmd BufNewFile,BufRead *.md set spell | set textwidth=80
autocmd BufNewFile,BufRead *.txt set syntax=markdown | set spell | set textwidth=80
autocmd BufNewFile,BufRead *.ledger set nowrap
autocmd BufNewFile,BufRead links.txt | set syntax=todo | set nospell | set textwidth=0
autocmd BufNewFile,BufRead quotes.txt set syntax=notes | set textwidth=0
autocmd BufNewFile,BufRead todo.txt set syntax=todo | set textwidth=0
autocmd BufNewFile,BufRead more.txt set syntax=todo | set textwidth=0
autocmd BufNewFile,BufRead daily.txt set syntax=todo
autocmd BufNewFile,BufRead hourly.txt set syntax=notes | set textwidth=0
