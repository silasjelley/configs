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
nnoremap <F3> i<C-R>=strftime("%Y-%m-%d  ")<CR><esc>
inoremap <F3> <C-R>=strftime("%Y-%m-%d ")<CR>

" Insert current time
nnoremap <F4> i<C-R>=strftime("%H-%M-%S  ")<CR><esc>
inoremap <F4> <C-R>=strftime("%H-%M-%S ")<CR>

" Prepend 'x $DATE' to line and move to end of file
nnoremap <leader>xx 0i<C-R>=strftime("x %Y-%m-%d ")<CR><esc>ddGp<C-o><esc>

" Change caret to plus
nnoremap <leader>cc lF>xi+<esc>

" Return to normal mode
inoremap jk <esc>

" Delete current word from insert mode
inoremap jh <C-O>:normal bdw<CR>

" Toggle spellcheck
nnoremap <F7> :set spell! spell?<CR>

" Goyo + Limelight + Spell check + Hide tilde
nnoremap <Leader>gy :Goyo<CR>
autocmd! User GoyoEnter | set spell | hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg | 
autocmd! User GoyoLeave | set nospell | quit

" Automated bracket and quote setting
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
