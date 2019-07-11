if exists('b:current_syntax')
  finish
endif

syn keyword ecmalessConditional if then elseif else case when

syn keyword ecmalessRepeat while

syn keyword ecmalessStatement do end return break continue

syn keyword ecmalessOperator not and or xor

syn keyword ecmalessTypedef def ann set

syn keyword ecmalessModule import export is as

syn keyword ecmalessBoolean true false nil

syn keyword ecmalessFunction fn

syn keyword ecmalessTodo TODO FIXME contained
syn match ecmalessLineComment ";.*" contains=ecmalessTodo,@spell

syn match ecmalessStringEscape "\\u[0-9a-fA-F]\{4}" contained
syn match ecmalessStringEscape "\\[nrfvbt\\\"]" contained
syn region ecmalessString start="\"" skip="\\\"" end="\"" contains=ecmalessStringEscape,@spell
syn region ecmalessDocString start="\"\"\"" skip="\\\"" end="\"\"\"" contains=ecmalessStringEscape,@spell

syn match ecmalessDelimiter  "[,.]"
syn match ecmalessBraces  "[{}\[\]]"
syn match ecmalessParens  "[()]"

syn match ecmalessType "\<[A-Z][a-zA-Z0-9_]*"

syn match ecmalessTag "#[a-zA-Z0-9_]*"

syn match ecmalessNumber "\<\d\+\>"

hi def link ecmalessBoolean      Boolean
hi def link ecmalessBraces       Delimiter
hi def link ecmalessConditional  Conditional
hi def link ecmalessDelimiter    Delimiter
hi def link ecmalessDocString    String
hi def link ecmalessFunction     Function
hi def link ecmalessLineComment  Comment
hi def link ecmalessModule       Include
hi def link ecmalessNumber       Number
hi def link ecmalessOperator     Operator
hi def link ecmalessRepeat       Repeat
hi def link ecmalessStatement    Statement
hi def link ecmalessString       String
hi def link ecmalessStringEscape Special
hi def link ecmalessTag          String
hi def link ecmalessTodo         Todo
hi def link ecmalessType         Identifier
hi def link ecmalessTypedef      TypeDef

syn sync minlines=500

let b:current_syntax = 'ecmaless'
