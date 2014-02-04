if exists("mkd_helpers_loaded")
  finish
endif
let mkd_helpers_loaded = 1

function! MkdLine(sub)
  exe "normal yyp"
  exe "s/./" . a:sub . "/g"
  nohlsearch
endfunction

com! MdTitle call MkdLine("=")
com! MdSubTitle call MkdLine("-")
