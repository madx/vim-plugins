fun! g:InitGitRebase()
  nmap <silent><buffer> ,rp :Pick<CR>
  nmap <silent><buffer> ,rs :Squash<CR>
  nmap <silent><buffer> ,re :Edit<CR>
  nmap <silent><buffer> ,rr :Reword<CR>
  nmap <silent><buffer> ,rf :Fixup<CR>
  nmap <silent><buffer> <Tab> :Cycle<CR>
endf
autocmd filetype gitrebase :call g:InitGitRebase()

" vim:set sw=2:
