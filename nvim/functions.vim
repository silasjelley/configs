function! ParseAMEX()
    " Remove commas from 4 fig sums
    %g/\"\d\+,\d\+\.\d\d/norm $F,x\"
    " Remove trailing commas from all lines
    %s/,$//g
    " Remove all double quotes
    %s/"//g
    " Sign all transactions as negative
    %s/\d\+\.\d\d$/-&/g
    " Sign all credits as positive
    %g/,,,,,\+CR/norm ddk$F-xi+
    " Remove commas that occasionally appear around 3 letter month abbreviations
    %g/,\a\a\a,/norm f,xf,xi jkhhhi jk
    " Delete all lines not starting with a date of the form (example) "Jan 22"
    %v/^[A-Z][a-z][a-z] [0-9]\+/d
    " Convert abbrviated date forms to ISO dates (eg. 2017-01-22)
    %s/Mar[ -,]/2020-03-/g
    %s/Apr[ -,]/2020-04-/g
    "%s/a:montha[ -,]/a:yearMontha-/g
    "%s/a:monthb[ -,]/a:yearMonthb-/g
    " Replace instances of multiple consecutive commas with a single comma
    %s/,\+/,/g
    " Zero pad any single digit dates 
    %s/-\d[ -,]/-0&/g
    %s/-0-/-0/g
    " Delete second date (Date processed)
    %s/ \d\d\d\d-\d\d-\d\d[ -,]/,/g
    " Add markers to following only the commas that are to be preserved (date
    " and amount columns)
    %s/\d\d\d\d-\d\d-\d\d,/&__/g
    %s/,.\d\+\.\d\d/__&/g
    " Remove all commas
    %s/,/ /g
    " Restore commas to previous marks
    %s/__/,/g
    " Remove whitespace around commas
    %s/ ,/,/g
    %s/, /,/g
    %normal $F,d$0f,hp
endfunction

function! ParseSantander()
    " Remove commas from 4 figure sums
    %s/,\d\d\d\+/DELCOM,,&/g
    %s/DELCOM,,,//g
    " Reoder columns
    %!awk -F',' 'BEGIN { OFS="," } {print $2,$(NF-2),$(NF-1),$(NF),$4" "$5" "$6" "$7}'
    " Delete header row
    normal gg dd
    " Remove all double quotes
    %s/"//g
    " Remove trailing/duplicate amounts at end of some lines
    %s/  £\d\+\.\d\d//g
    " Sign all debits with a '-', remove currency symbol
    %s/\/\d\d\d\d,,/&-/g
    " Sign all credits with a '+', remove currency symbol
    %s/£\d\+\.\d\d,,/+&/g
    " Remove double commas
    %s/,,/,/g
    " Remove '£' symbols
    %s/£//g
    " Insert new header row
    normal ggODate,Amount,Balance,Details
endfunction
