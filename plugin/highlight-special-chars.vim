" Highlight special chars

if exists("highlight_special_chars_loaded")
  finish
endif
let highlight_special_chars_loaded = 1

highlight HscWhitespace ctermbg=1 ctermfg=7 guibg=#403c41 guifg=White
highlight HscError      ctermbg=1 ctermfg=7 guibg=Red     guifg=White
highlight HscWarn       ctermbg=3 ctermfg=7 guibg=#ffb964 guifg=#605958
highlight HscInfo       ctermbg=4 ctermfg=7 guibg=#345fa8 guifg=White

autocmd ColorScheme * highlight HscWhitespace ctermbg=1 ctermfg=7 guibg=#403c41 guifg=White
autocmd ColorScheme * highlight HscError      ctermbg=1 ctermfg=7 guibg=Red     guifg=White
autocmd ColorScheme * highlight HscWarn       ctermbg=3 ctermfg=7 guibg=#ffb964 guifg=#605958
autocmd ColorScheme * highlight HscInfo       ctermbg=4 ctermfg=7 guibg=#345fa8 guifg=White

autocmd Syntax * syn match HscWhitespace / /me=s+1 containedin=ALL 
autocmd Syntax * syn match HscWarn       / \+$/    containedin=ALL
autocmd Syntax * syn match HscError      /\/!\\/   containedin=ALL
autocmd Syntax * syn match HscInfo       /(?)/     containedin=ALL
autocmd Syntax * syn match HscWarn       /(!)/     containedin=ALL
