if exists("quickfix_to_args_loaded")
  finish
endif
let quickfix_to_args_loaded = 1

function! Qf2Args()
  let x={} | for d in getqflist() | let x[bufname(d.bufnr)]=1 | endfor
  exe 'args' join(keys(x))
endfunction

com! Qf2Args call Qf2Args()
