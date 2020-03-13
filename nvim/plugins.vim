"Vim Plug
" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

" Coc - Intellisense for vim
Plug 'neoclide/coc.nvim',{'branch':'release','as':'coc'}

" Polyglot - Expanded syntax highlighting
Plug 'sheerun/vim-polyglot'

" Goyo + Limelight - Distraction-free writing in Vim
Plug 'junegunn/goyo.vim',{'as':'goyo'}
Plug 'junegunn/limelight.vim',{'as':'limelight'}

" Airline
Plug 'vim-airline/vim-airline',{'as':'airline'}

" Highlight Yank
Plug 'machakann/vim-highlightedyank',{'as':'highlightedyank'}

" Ledger Support
Plug 'ledger/vim-ledger',{'as':'ledger'}

"Themes
" Oceanic
Plug 'mhartington/oceanic-next',{'as':'oceanic'}

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
