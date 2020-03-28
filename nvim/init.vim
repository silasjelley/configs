" Source Configs
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/bindings.vim
source ~/.config/nvim/abbreviations.vim
source ~/.config/nvim/coc.vim
" source ~/.config/nvim/theme.vim

set nocompatible
set encoding=utf-8
scriptencoding utf-8
set mouse=a
set updatetime=300

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Enable spellcheck
set spelllang=en_gb
set spellfile=~/.config/nvim/spelling.vim/en.utf-8.add

" Enable true color support
set termguicolors
" Theme
set background=dark
syntax enable
colorscheme OceanicNext

" Make it obvious where 80 characters is
"set textwidth=80
set colorcolumn=+1

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
