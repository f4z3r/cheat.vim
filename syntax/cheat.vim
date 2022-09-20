" Cheat syntax file
" Language:             Cheat (https://github.com/denisidoro/navi/blob/master/docs/cheatsheet_syntax.md)
" Author:               f4z3r (https://github.com/f4z3r)
" URL:                  https://github.com/f4z3r/cheat.vim
" Filenames:            *.cheat

if exists('b:current_syntax')
  finish
endif

" Statement preffixes
syn keyword cheatTagSymbol %
syn keyword cheatDescriptionSympol #
syn keyword cheatVarSymbol $
syn keyword cheatLinkSymbol @

" Literals
syn match cheatTag "%.*\(\w\)" display
syn match cheatDesc "#\(.*\)$" display
syn match cheatVar "$\(.*\):" display
syn match cheatVarCommand "\$[^:]*:\(.*\)$" display
syn match cheatLink "@.*\(\w\)" display
syn match cheatCommand "^[^@%#\$].*$" display

" Comment
syn match cheatComment ";.*$" display

" Highlighting
hi link cheatTagSymbol Operator
hi link cheatDescriptionSympol Operator
hi link cheatVarSymbol Operator
hi link cheatLinkSymbol Operator
hi link cheatLink Type
hi link cheatTag Keyword
hi link cheatCommand Define
hi link cheatVar Label
hi link cheatVarCommand String
hi link cheatDesc Function
hi link cheatComment Comment


" Boolean
" Constant
" Number
" Repeat
" Statement
