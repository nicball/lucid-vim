" Vim syntax file
" Language:	Lucid
" Maintainer:	Nick Ballard <znhihgiasy@gmail.com>
" Last Update:  Wed Nov 8 17:39:39 PDT 2018

if exists("b:current_syntax")
   finish
endif

setlocal iskeyword+=$

syntax keyword lucidStatement module always global
syntax keyword lucidConditional if else case
syntax keyword lucidRepeat for
syntax keyword lucidType dff fsm sig var const input output inout
syntax keyword lucidStructure struct
syntax match lucidConstant "\<[A-Z][A-Z0-9_]\+\>"
syntax match lucidConstant "\<$\(clog2\|pow\|reverse\|flatten\|signed\|unsigned\)\>"
syntax match lucidOperator "[&|!><)(*#%@+/=?:;}{,.\^\-\[\]]"
syntax match lucidOperator "c{\|\d\+x{"
syntax match lucidNumber "\(\<\d\+\|\)[bB][0-1xXzZ]\+\>"
syntax match lucidNumber "\(\<\d\+\|\)[dD][0-9xXzZ]\+\>"
syntax match lucidNumber "\(\<\d\+\|\)[hH][0-9a-fA-FxXzZ]\+\>"
syntax match lucidNumber "\<[+-]\=[0-9_]\+\(\.[0-9_]*\|\)\(e[0-9_]*\|\)\>"
syntax region lucidString start=+"+ skip=+\\"+ end=+"+ contains=lucidEscape
syntax match lucidEscape +\\[nt"\\]+ contained
syntax match lucidEscape "\\\o\o\=\o\=" contained
syntax region lucidComment start="/\*" end="\*/"
syntax region lucidComment start="//" end="$"
syntax sync minlines=50

highlight default link lucidConditional     Conditional
highlight default link lucidRepeat          Repeat
highlight default link lucidString          String
highlight default link lucidComment         Comment
highlight default link lucidConstant        Constant
highlight default link lucidNumber          Number
highlight default link lucidOperator        Special
highlight default link lucidStatement       Statement
highlight default link lucidEscape          Special

let b:current_syntax = "lucid"
