"Vim Plug
" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

" Coc - Intellisense for vim
Plug 'neoclide/coc.nvim',{'branch':'release','as':'coc'}

" VimClap
Plug 'liuchengxu/vim-clap'
" Build the extra binary if cargo exists on your system.
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }

" Polyglot - Expanded syntax highlighting
Plug 'sheerun/vim-polyglot'

" Goyo + Limelight - Distraction-free writing in Vim
Plug 'junegunn/goyo.vim',{'as':'goyo'}
Plug 'junegunn/limelight.vim',{'as':'limelight'}

" Airline
Plug 'vim-airline/vim-airline',{'as':'airline'}

" Nerdtree File Manager
Plug 'scrooloose/nerdtree',{'as':'nerdtree'}

" Highlight Yank
Plug 'machakann/vim-highlightedyank',{'as':'highlightedyank'}

Plug 'ryanoasis/vim-devicons',{'as':'devicons'}

" Arduino
Plug 'stevearc/vim-arduino'

"Themes
" Oceanic
Plug 'mhartington/oceanic-next',{'as':'oceanic'}

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
