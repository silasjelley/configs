" File:        todo.txt.vim
" Description: Todo.txt syntax settings
" Author:      Silas Jelley

if exists("b:current_syntax")
    finish
endif

set nowrap

syntax  match  TodoDone       '^[xX]\s.\+$'
syntax  match  TodoPriorityA  '^([aA])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityB  '^([bB])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityC  '^([cC])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,OverDueDate

syntax  match  TodoDate       '\d\{2,4\}-\d\{2\}-\d\{2\}' contains=NONE
syntax  match  TodoTime       '\d\{2\}:\d\{2\}:\d\{2\}' contains=NONE
syntax  match  TodoProject    '\(^\|\W\)+[^[:blank:]]\+'  contains=NONE
syntax  match  TodoContext    '\(^\|\W\)@[^[:blank:]]\+'  contains=NONE

" Other priority colours might be defined by the user
highlight  default  link  TodoDone       Comment
highlight  default  link  TodoPriorityA  Constant
highlight  default  link  TodoPriorityB  Statement
highlight  default  link  TodoPriorityC  Identifier
highlight  default  link  TodoDate       PreProc
highlight  default  link  TodoTime       Define
highlight  default  link  TodoProject    Special
highlight  default  link  TodoContext    Special

" Keywords
syn match word_todo 'TODO' | hi word_todo gui=bold guifg=#ffb86c
syn match word_done 'DONE' | hi word_done gui=bold guifg=#50fa7b
syn match word_main 'MAIN' | hi word_main gui=bold guifg=#ffb86c
syn match word_more 'MORE' | hi word_more gui=bold guifg=pink


let b:current_syntax = "todo"
