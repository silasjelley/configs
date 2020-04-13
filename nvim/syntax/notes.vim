" Vim syntax file
" Language: Bookmarks Text File
" Maintainer: Silas Jelley <silasjelley@gmail.com>
" Created: 2020-04-09 

set nowrap

if exists("b:current_syntax")
  finish
endif

" Syntax highlighting
    " Shared
        syn match note_title '\a*' | hi bm_title guifg=#bd93f9
        " Tags beginning with #
        syn match note_tag '#\a\+' | hi note_tag guifg=#6272a4
        " URLs
        syn match note_url 'http://..*' | syn match note_url 'https://.*' | hi note_url guifg=#ababab
        " Keywords
        syn match word_todo 'TODO' | hi word_todo gui=bold guifg=#ffb86c
        syn match word_done 'DONE' | hi word_done gui=bold guifg=#50fa7b
        syn match word_main '(MAIN)' | hi word_main gui=bold guifg=red
        syn match word_more '(MORE)' | hi word_more gui=bold guifg=pink
        " Special characters or symbols
        syn match char_cret '  > ' | hi char_cret guifg=orange
        syn match char_plus '  + ' | hi char_plus guifg=#50fa7b
        syn match task_done '^x .*' | hi task_done guifg=#44475a
        " Date & time
        syn match date '\d\d\d\d-\d\d-\d\d ' | hi date guifg=#44475a
        syn match time '\d\d:\d\d - \d\d:\d\d' | hi time guifg=#44475a

    " Bookmarks

    " Logbook
    syn match log_divider '=============' | hi log_divider guifg=#6272a4
