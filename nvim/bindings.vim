" Disable arrow key navigation
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Move by one line (allows vim like movement even when dealing with paras
nnoremap j gj
nnoremap k gk

" Find and replace all
nnoremap <Leader>rr :%s//g<Left><Left>

" Return to normal mode
inoremap jk <esc>

" Nerdtree
nnoremap  <leader>] :NERDTreeToggle<CR>

" Goyo + Limelight + Spell check + Hide tilde
nnoremap <Leader>gy :Goyo<CR>
autocmd! User GoyoEnter Limelight | set spell | hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
autocmd! User GoyoLeave Limelight!| set nospell

