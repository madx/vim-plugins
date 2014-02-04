if exists("clean_buffers_loaded")
  finish
endif
let clean_buffers_loaded = 1

function! CleanBuffers()
  let last_buffer = bufnr('$')
  let n = 1
  let delete_count = 0

  while n <= last_buffer
    if buflisted(n) && bufwinnr(n) == -1
      silent exe 'bw' . ' ' . n
      let delete_count = delete_count + 1
    endif
    let n = n + 1
  endwhile

  echomsg "Deleted" delete_count "buffers" 
endfunction

com! CleanBuffers :call CleanBuffers()
