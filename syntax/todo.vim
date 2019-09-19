" Todo syntax file
" Filenames:    ~/.local/share/todo/*.txt

if exists("b:current_syntax")
  finish
endif

unlet! b:current_syntax

syn match todoItem " *-.\+$" contains=todoDeadline
syn match todoDone "^\(  \)*✔.\+" contains=todoDeadline
syn match todoCategory "^\( \)*=.\+$" contains=todoDeadline
syn match todoUrgent "^\(  \)*+.\+$" contains=todoDeadline
syn match todoComment " *#.\+$"
syn match todoDeadline "!\d\d\d\d-\d\d-\d\d" contained

hi link todoDone     Comment
hi link todoComment  Comment
hi link todoCategory Type
hi link todoUrgent   WarningMsg
hi link todoDeadline Search

let b:current_syntax = "todo"

" vim:set sw=2:
