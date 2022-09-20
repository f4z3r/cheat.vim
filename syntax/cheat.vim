" Cheat syntax file
" Language:             Cheat (https://github.com/denisidoro/navi/blob/master/docs/cheatsheet_syntax.md)
" Author:               f4z3r (https://github.com/f4z3r)
" URL:                  https://github.com/f4z3r/cheat.vim
" Filenames:            *.cheat

if exists('b:current_syntax')
  finish
endif

syn match cheatOperator "\(@\|\$\|#\|%\)" contained

syn match cheatTag "%.*\(\w\)" contains=cheatOperator

syn match cheatDesc "#\(.*\)$" contains=cheatOperator

syn match cheatLink "@.*\(\w\)" contains=cheatOperator

syn match cheatVarInCommand +<[^>]*>+ contained
syn match cheatCommand "^[^@%#\$].*$" contains=cheatVarInCommand

syn match cheatVar "\$\(.*\):" contained contains=cheatOperator
syn match cheatVarCommand "\$[^:]*:\(.*\)$" contains=cheatVar,cheatOperator

" Comment
syn match cheatComment ";.*$" display

" Highlighting
hi link cheatOperator Operator
hi link cheatLink Type
hi link cheatTag Number
hi link cheatCommand Keyword
hi link cheatVarInCommand WarningMsg
hi link cheatVar WarningMsg
hi link cheatVarCommand String
hi link cheatDesc Identifier
hi link cheatComment Comment
