" Vim syntax file
" Language: Personal Log File
" Maintainer: Silas Jelley <silasjelley@gmail.com>
" Created: 2020-04-09 

set nowrap

if exists("b:current_syntax")
  finish
endif

syn match log_divider '============='
syn match log_time '\d\d:\d\d - \d\d:\d\d'

hi log_divider guifg=#ababab
hi log_time guifg=#708090


