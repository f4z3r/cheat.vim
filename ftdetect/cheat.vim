" Cheat filetype detect file
" Language:             Cheat (https://github.com/denisidoro/navi/blob/master/docs/cheatsheet_syntax.md)
" Author:               f4z3r (https://github.com/f4z3r)
" URL:                  https://github.com/f4z3r/cheat.vim
" Filenames:            *.cheat

augroup cheat_lang_ftdetect
  autocmd!
  autocmd BufRead,BufNewFile *.cheat set filetype=cheat
augroup END
