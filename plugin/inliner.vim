if exists("inliner_loaded")
  finish
endif
let inliner_loaded = 1

function! Inliner_RubyInlineVariable()
  " Copy the variable under the cursor into the 'a' register
  :let l:tmp_a = @a
  :normal "ayiw
  " Delete variable and equals sign
  :normal 2daW
  " Delete the expression into the 'b' register
  :let l:tmp_b = @b
  :normal "bd$
  " Delete the remnants of the line
  :normal dd
  " Go to the end of the previous line so we can start our search for the
  " usage of the variable to replace. Doing '0' instead of 'k$' doesn't
  " work; I'm not sure why.
  normal k$
  " Replace the next occurence of the variable
  exec '/:\@<!\<' . @a . '\>'
  " Replace that occurence with the text we yanked
  exec ':.s/:\@<!\<' . @a . '\>/' . @b
  :let @a = l:tmp_a
  :let @b = l:tmp_b
endfunction

function! Inliner_RubyInlineConditional()
  normal %dd''ddpk<<
endfunction
