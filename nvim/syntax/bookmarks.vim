" Vim syntax file
" Language: Bookmarks Text File
" Maintainer: Silas Jelley <silasjelley@gmail.com>
" Created: 2020-04-09 

set nowrap

if exists("b:current_syntax")
  finish
endif

syn match bm_title '\a*'
syn match bm_tag '#\a\+'
syn match bm_url 'http://..*'
syn match bm_url 'https://.*'
syn match bm_date '\d\d\d\d-\d\d-\d\d '

hi bm_tag guifg=#6272a4
hi bm_url guifg=#ababab
hi bm_date guifg=#282a36
hi bm_title guifg=#bd93f9

