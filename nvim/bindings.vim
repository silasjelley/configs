" Set leader character
let mapleader = "'"

" Disable arrow key navigation
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Switch to next/previous buffer
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" Move by one line (allows vim like movement even when dealing with paras
nnoremap j gj
nnoremap k gk

" Find and replace all
nnoremap <Leader>rr :%s//g<Left><Left>

" Find and replace all of currently selected word
nnoremap <Leader>RR :%s/\<<C-r><C-w>\>//g<Left><Left>

" Surround current word with quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" Insert current date
nnoremap <F3> i<C-R>=strftime("%Y-%m-%d  ")<CR><Esc>
inoremap <F3> <C-R>=strftime("%Y-%m-%d ")<CR>

" Insert current time
nnoremap <F4> i<C-R>=strftime("%H-%M-%S  ")<CR><Esc>
inoremap <F4> <C-R>=strftime("%H-%M-%S ")<CR>

" Return to normal mode
inoremap jk <esc>

" Delete current word from insert mode
inoremap jh <C-O>:normal bdw<CR>

" Move to the beginning and end of current line respectively
nnoremap H _
nnoremap L $

" Nerdtree
nnoremap  <leader>] :NERDTreeToggle<CR>

" Goyo + Limelight + Spell check + Hide tilde
nnoremap <Leader>gy :Goyo<CR>
autocmd! User GoyoEnter Limelight | set spell | hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg | 
autocmd! User GoyoLeave Limelight!| set nospell | quit


