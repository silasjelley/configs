" Source Configs
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/bindings.vim
source ~/.config/nvim/abbreviations.vim
source ~/.config/nvim/functions.vim
source ~/.config/nvim/coc.vim
" source ~/.config/nvim/theme.vim

" Statusline
    " Elements
    set statusline=%#NonText#                       " text color
    set statusline+=\ \                             " padding
    set statusline+=%.40F                           " full path truncated to 40 chars
    set statusline+=%#Statement#%.3m%*%#NonText#\   " modified status in red
    set statusline+=%=                              " switch right side
    set statusline+=\ %4l/%-4L\ %p%%                " line count and percentage
    set statusline+=\ %3c                           " char number
    set statusline+=\ \ \                           " padding

    " Colors

" Smartcase search
set ignorecase
set smartcase

set nocompatible
set encoding=utf-8
scriptencoding utf-8
set mouse=a             "Enable mouse
set updatetime=300

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Enable spellcheck
set spelllang=en_gb
set spellfile=~/.config/nvim/spelling.vim/en.utf-8.add

" Enable true color support
set termguicolors
" Theme
set background=dark
syntax enable
colorscheme OceanicNext

" Break line at 80 chars
" set textwidth=80

" LineNumbers
set number
set numberwidth=3

" Sync clipboard with system
set clipboard+=unnamedplus

" Highlight the current line
set ruler
set cursorline
hi CursorLine term=bold cterm=bold gui=bold 

" Hide tildes from file end
hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

" Syntax highlighting and rules for specific files
" autocmd BufNewFile,BufRead *.txt Limelight | set spell
autocmd BufNewFile,BufRead *.md set spell
autocmd BufNewFile,BufRead bookmarks.txt | set syntax=notes | set nospell
autocmd BufNewFile,BufRead quotes.txt set syntax=notes
autocmd BufNewFile,BufRead todo.txt set syntax=todo
autocmd BufNewFile,BufRead more.txt set syntax=todo
autocmd BufNewFile,BufRead journal.txt set syntax=todo
autocmd BufNewFile,BufRead time.txt set syntax=notes

" For ledger
au BufNewFile,BufRead *.ledger setf ledger | comp ledger
let g:ledger_maxwidth = 120
let g:ledger_fold_blanks = 1
function LedgerSort()
    :%! hledger -f - print
    :%LedgerAlign
endfunction
command LedgerSort call LedgerSort()

