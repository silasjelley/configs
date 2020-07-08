" Set leader character
" The mapping of space to <leader> (rather than <leader> to space) 
" allows 'showcmd' to function properly
map <space> <Leader>

" Disable arrow key navigation
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"Buffers
" Switch to next/previous
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
" Display list of open buffers and prompt for a number
:nnoremap <F5> :buffers<CR>:buffer<Space>

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

" Prepend time to current line
nnoremap <leader>tt 0i<C-R>=strftime("%H:%M ")<CR><esc>A<C-o><esc>

" Prepend time to current line after first time
nnoremap <leader>hh 05la<C-R>=strftime("%H:%M ")<CR><esc>A<C-o><esc>

" Prepend 'x $DATE' to line and move to end of file
nnoremap <leader>xx 0i<C-R>=strftime("x %Y-%m-%d ")<CR><esc>ddGp<C-o><esc>

" Change caret to plus
nnoremap <leader>cc lF>xi+<esc>

" Return to normal mode
inoremap jk <esc>

" Toggle spellcheck
nnoremap <F7> :set spell! spell?<CR>

" Goyo + Limelight + Spell check + Hide tilde
nnoremap <Leader>gy :Goyo<CR>
autocmd! User GoyoEnter | set spell | hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg | 
autocmd! User GoyoLeave | set nospell | quit

" Automated bracket and quote setting
" inoremap ( ()<Esc>i
" inoremap { {}<Esc>i
" inoremap [ []<Esc>i
" inoremap < <><Esc>i

" Transform a URL into my bookmark format
nnoremap <leader>BB :normal ddp<CR>

" Source vimrc with <Leader>vc
nnoremap <Leader>vc :source ~/.config/nvim/init.vim<CR>:echo "Reloaded init.vim"<CR>

" Split vertically and change to the split
nnoremap <Leader>vb <C-w>v

" Split vertically and change to the split
nnoremap <Leader>vv <C-w>s
