" Todo syntax file
" Filenames:    ~/.todo

if exists("b:current_syntax")
  finish
endif

unlet! b:current_syntax

syn match todoDone "^\(  \)*✔.\+"
syn match todoCategory "^\( \)*=.\+$"
syn match todoUrgent "^\(  \)*+.\+$"
syn match todoComment " *--.\+$"

hi link todoDone     Comment
hi link todoComment  Comment
hi link todoCategory Type
hi link todoUrgent   Keyword

let b:current_syntax = "todo"

" vim:set sw=2:
