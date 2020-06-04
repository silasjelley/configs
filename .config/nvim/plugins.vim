"Vim Plug
" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

" Coc - Intellisense for vim
Plug 'neoclide/coc.nvim',{'branch':'release','as':'coc'}

" Polyglot - Expanded syntax highlighting
Plug 'sheerun/vim-polyglot'

" Goyo - Distraction-free writing in Vim
Plug 'junegunn/goyo.vim',{'as':'goyo'}

" Highlight Yank
Plug 'machakann/vim-highlightedyank',{'as':'highlightedyank'}

" Ledger Support
Plug 'ledger/vim-ledger',{'as':'ledger'}

" Hexokinase - asynchronously displaying the colours in the file
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
