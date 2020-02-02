" Source Configs
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/bindings.vim
" source ~/.config/nvim/theme.vim

set nocompatible
set encoding=utf-8
scriptencoding utf-8
set mouse=a

" Enable true color support
set termguicolors
" Theme
set background=dark
syntax enable
let ayucolor="mirage"
colorscheme OceanicNext

" Make it obvious where 80 characters is
set textwidth=80
"set colorcolumn=+1

" LineNumbers
set number
set numberwidth=3

" Sync clipboard with system
set clipboard+=unnamedplus

" Highlight the current line
set ruler
set cursorline
hi CursorLine term=bold cterm=bold
