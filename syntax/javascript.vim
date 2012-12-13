" Language:    CoffeeScript
" Maintainer:  JediuS

" Bail if our syntax is already loaded.
if exists('b:current_syntax') && b:current_syntax == 'javascript'
  finish
endif
 
" Highlight long strings.
syn sync minlines=100

" CoffeeScript identifiers can have dollar signs.
setlocal isident+=$

syn match jVar /\zs\<[a-z][A-Za-z_$0-9]*\>\ze \?=/ display

syn match jObject /this/
syn match jObject /\zs\<[A-Za-z_$0-9]*\>\ze\./ display
syn match jObjProperty /\.\zs\<[A-Za-z0-9_$]*\>\ze\_[^.]/ display
syn match jSubObject /\.\zs\<[A-Za-z0-9_$]*\>\ze\((.*)\)\=\./ display
syn match jQuery /[ \t]\?\zs\$\ze[(.]/ display
syn match jEvent /[^A-Za-z0-9.]\zse\ze\_[^A-Za-z0-9]/ display

syn match jQuote /'/ display
syn match jArrow /[-=]>/ display
syn match jBracket /\zs[()]\ze/ display
syn match jBrace /[{}]/ display

syn match jCondTrue /\%(&&\|||\|[<>]=\?\| is \| or \| and \|true\)/ display
syn match jCondFalse /\%(!\| isnt \|false\|undefined\|null\)/ display


syn region String start=/"/ skip=/\\\\\|\\"/ end=/"/
syn region String start=/'/ skip=/\\\\\|\\'/ end=/'/
syn match jObjString /['"][a-zA-Z0-9_\-$# ]\+['"][ \t]*:/

syn match Red /\<\%(exit\|error\)\>/
"syn match Orange /\<\%(exit\|error\)\>/
syn match reserverWords /\<\%(process\|console\)\>/

syn match Conditional /\<\%(if\|else\|switch\|case\|break\)\>/

syn match coffeeSpecialOp /[,;]/ display
hi def link coffeeSpecialOp SpecialChar

syn match Statement /\<\%(return\|continue\|throw\)\>/ display

syn match jsWords /\<\%(return\|default\|function\|void\|with\|const\|let\|enum\|export\|import\|native\|__hasProp\|__extends\|__slice\|__bind\|__indexOf\)\>/
syn match jsWords /[(\ ]var /
syn match jsWords /^var /
syn match jsWords /require/

syn match Repeat /\<\%(for\|in\|while\|loop\)\>/

syn match Exception /\<\%(try\|catch\|finally\|console.log\)\>/

syn match coffeeKeyword /\<\%(new\|of\|by\|not\|extends\|super\|do\)\>/
\                       display

syn match coffeeKeyword /\<for\s\+own\>/ contained containedin=coffeeRepeat
\                       display
hi def link coffeeKeyword Keyword

syn match coffeeOperator /\<\%(instanceof\|typeof\|delete\)\>/ display
hi def link coffeeOperator Operator

syn match coffeeSpecialVar /\<\%(prototype\|arguments\)\>/ display

syn match coffeeClass /\<\u\w*\>/ display
hi def link coffeeClass Structure

syn match coffeeConstant /\<\u[A-Z0-9_]\+\>/ display
hi def link coffeeConstant Constant

syn cluster coffeeIdentifier contains=coffeeSpecialVar,coffeeClass,
\                                     coffeeConstant




syn match coffeeNumber /\i\@<![-+]\?\d\+\%([eE][+-]\?\d\+\)\?/ display
syn match coffeeNumber /\<0[xX]\x\+\>/ display
syn match coffeeNumber /\<0b[01]\+\>/ display
hi def link coffeeNumber Number

syn match coffeeFloat /\i\@<![-+]\?\d*\.\@<!\.\d\+\%([eE][+-]\?\d\+\)\?/
\                     display
hi def link coffeeFloat Float


syn match coffeeObjAssign /@\?\I\i*\s*\ze::\@!/ contains=@coffeeIdentifier display
hi def link coffeeObjAssign Identifier

syn keyword coffeeTodo TODO FIXME XXX contained
hi def link coffeeTodo Todo

syn region coffeeEmbed matchgroup=coffeeEmbedDelim
\                      start=/`/ skip=/\\\\\|\\`/ end=/`/
\                      contains=@coffeeJS
hi def link coffeeEmbedDelim Delimiter

syn region coffeeInterp matchgroup=coffeeInterpDelim start=/#{/ end=/}/ contained
\                       contains=@coffeeAll
hi def link coffeeInterpDelim PreProc

syn match coffeeEscape /\\\d\d\d\|\\x\x\{2\}\|\\u\x\{4\}\|\\./ contained display
hi def link coffeeEscape SpecialChar

syn region coffeeRegex start=/\%(\%()\|\i\@<!\d\)\s*\|\i\)\@<!\/=\@!\s\@!/
\                      skip=/\[[^\]]\{-}\/[^\]]\{-}\]/
\                      end=/\/[gimy]\{,4}\d\@!/
\                      oneline contains=@coffeeBasicString
hi def link coffeeRegex String

syn region coffeeHeredoc start=/"""/ end=/"""/ contains=@coffeeInterpString
\                        fold
syn region coffeeHeredoc start=/'''/ end=/'''/ contains=@coffeeBasicString
\                        fold
hi def link coffeeHeredoc String



syn match Comment /\/\/.*/ contains=@Spell,coffeeTodo
syn region Comment start='/\*' end='*/' contains=@Spell,coffeeTodo

syn match spaceTabs /   \zs\ \ze   / display
syn match spaceTabs /^ \{1}\ze   / display


"" The first case matches symbol operators only if they have an operand before.
"syn match coffeeExtendedOp /\%(\S\s*\)\@<=[+\-*/%&|\^=!<>?.]\+\|[-=]>\|--\|++\|:/
"\                          display
"syn match coffeeExtendedOp /\<\%(and\|or\)=/ display
"hi def link coffeeExtendedOp coffeeOperator

"" This is separate from `coffeeExtendedOp` to help differentiate commas from
"" dots.

"syn match coffeeGlobal /\<\%(null\|undefined\)\>/ display
"hi def link coffeeGlobal Type


"a non-interpolated string
"syn cluster coffeeBasicString contains=@Spell,coffeeEscape
"An interpolated string
"syn cluster coffeeInterpString contains=@coffeeBasicString,coffeeInterp

"Regular strings
"syn region coffeeString start=/"/ skip=/\\\\\|\\"/ end=/"/
"\                       contains=@coffeeInterpString
"syn region coffeeString start=/'/ skip=/\\\\\|\\'/ end=/'/
"\                       contains=@coffeeBasicString
"hi def link coffeeString String

" A integer, including a leading plus or minus

"syn match coffeeComment /#.*/ contains=@Spell,coffeeTodo
"hi def link coffeeComment Comment


"" A comment in a heregex
"syn region coffeeHeregexComment start=/#/ end=/\ze\/\/\/\|$/ contained
"\                               contains=@Spell,coffeeTodo
"hi def link coffeeHeregexComment coffeeComment

"" Embedded JavaScript

""" A heregex
"syn region coffeeHeregex start=/\/\/\// end=/\/\/\/[gimy]\{,4}/
"\                        contains=@coffeeInterpString,coffeeHeregexComment
"\                        fold
"hi def link coffeeHeregex coffeeRegex

""" Heredoc strings

""" An error for trailing whitespace, as long as the line isn't just whitespace
"if !exists("coffee_no_trailing_space_error")
  "syn match coffeeSpaceError /\S\@<=\s\+$/ display
  "hi def link coffeeSpaceError Error
"endif

""" Ignore reserved words in dot accesses.
"syn match coffeeDotAccess /\.\@<!\.\s*\I\i*/he=s+1 contains=@coffeeIdentifier
"hi def link coffeeDotAccess coffeeExtendedOp

""" Ignore reserved words in prototype accesses.

""" This is required for interpolations to work.
"syn region coffeeCurlies matchgroup=coffeeCurly start=/{/ end=/}/
"\                        contains=@coffeeAll
"syn region coffeeBrackets matchgroup=coffeeBracket start=/\[/ end=/\]/
"\                         contains=@coffeeAll
"syn region coffeeParens matchgroup=coffeeParen start=/(/ end=/)/
"\                       contains=@coffeeAll

"" These are highlighted the same as commas since they tend to go together.
"hi def link coffeeBlock coffeeSpecialOp
"hi def link coffeeBracket coffeeBlock
"hi def link coffeeCurly coffeeBlock
"hi def link coffeeParen coffeeBlock

" This is used instead of TOP to keep things coffee-specific for good
" embedding. `contained` groups aren't included.



"syn cluster coffeeAll contains=coffeeStatement,coffeeRepeat,coffeeConditional,
"\                              coffeeException,coffeeKeyword,coffeeOperator,
"\                              coffeeExtendedOp,coffeeSpecialOp,coffeeBoolean,
"\                              coffeeGlobal,coffeeSpecialVar,coffeeClass,
"\                              coffeeConstant,coffeeString,coffeeNumber,
"\                              coffeeFloat,coffeeReservedError,coffeeObjAssign,
"\                              coffeeComment,coffeeBlockComment,coffeeEmbed,
"\                              coffeeRegex,coffeeHeregex,coffeeHeredoc,
"\                              coffeeSpaceError,coffeeSemicolonError,
"\                              coffeeDotAccess,coffeeProtoAccess,
"\                              coffeeCurlies,coffeeBrackets,coffeeParens,
"\                              jSpaceTabs,jObject,jSubObject,jObjProperty

if !exists('b:current_syntax')
  let b:current_syntax = 'javascript'
endif
