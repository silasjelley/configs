" Abbreviations
  :ab @@ silasjelley@gmail.com
  :ab abconf ~/.config
  :ab absite https://silasjelley.com
  :ab aaa <C-R>=strftime('[ ] %Y-%m-%d')<CR>
  :ab xxx <C-R>=strftime('x %Y-%m-%d')<CR>
  :ab ddd <C-R>=strftime('%Y-%m-%d')<CR>
  :ab dddd 
			  \<C-R>=strftime('%A')<CR>
			  \<CR><C-R>=strftime('%d %B %Y')<CR>
  :ab tttt 
			  \<esc>:r!date +'\%A' -d 'tomorrow'
			  \<CR>:r!date +'\%d \%B \%Y' -d 'tomorrow'
			  \<CR>:r!echo '============='
			  \<CR>:r!echo
			  \<CR>:r!echo '============='
			  \<CR>ki
  :ab mmm <C-R>=strftime('%Y-%m-')<CR>
  :ab ttt <C-R>=strftime('%H:%M:%S')<CR>
  :ab iii <space>           <space>
  :ab qqq <C-R>=strftime('%Y-%m-%d()[]{}')<CR><esc>6ha
  :ab abdttm <C-R>=strftime('%Y-%m-%d %H:%M:%S')<CR>
