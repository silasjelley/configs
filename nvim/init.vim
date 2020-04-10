" Source Configs
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/bindings.vim
source ~/.config/nvim/abbreviations.vim
source ~/.config/nvim/coc.vim
" source ~/.config/nvim/theme.vim

" Smartcase search
set ignorecase
set smartcase

set nocompatible
set encoding=utf-8
scriptencoding utf-8
set mouse=a
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
hi CursorLine term=bold cterm=bold

" Hide tildes from file end
hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

" Syntax highlighting and rules for specific files
autocmd BufNewFile,BufRead bookmarks.txt set syntax=bookmarks
autocmd BufNewFile,BufRead quotes.txt set syntax=bookmarks
autocmd BufNewFile,BufRead todo.txt set syntax=bookmarks
autocmd BufNewFile,BufRead more.txt set syntax=bookmarks
autocmd BufNewFile,BufRead log.txt set syntax=logbook
autocmd BufNewFile,BufRead *.txt Limelight | set spell
autocmd BufNewFile,BufRead *.md Limelight | set spell



" Show buffer index in airline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1

