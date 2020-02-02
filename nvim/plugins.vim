"Vim Plug
" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

" Polyglot - Expanded syntax highlighting
Plug 'sheerun/vim-polyglot'

" Goyo - Distraction-free writing in Vim
Plug 'junegunn/goyo.vim',{'as':'goyo'}

" Airline
Plug 'vim-airline/vim-airline',{'as':'airline'}

" Nerdtree File Manager
Plug 'scrooloose/nerdtree',{'as':'nerdtree'}

" Highlight Yank
Plug 'machakann/vim-highlightedyank',{'as':'highlightedyank'}

Plug 'ryanoasis/vim-devicons',{'as':'devicons'}

"Themes

" base 16
Plug 'chriskempson/base16-vim',{'as':'base16'}

" Vim One
Plug 'rakr/vim-one'

" Ayu
Plug 'ayu-theme/ayu-vim',{'as':'ayu'}

" Dracula 
Plug 'dracula/vim',{'as':'dracula'}

" Iceberg 
Plug 'cocopon/iceberg.vim/',{'as':'iceberg'}

" Nova
Plug 'zanglg/nova.vim',{'as':'nova'}

" Oceanic
Plug 'mhartington/oceanic-next',{'as':'oceanic'}

" One Dark
Plug 'joshdick/onedark.vim',{'as':'onedark'}

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
