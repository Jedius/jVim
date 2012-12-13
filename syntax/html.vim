" Vim syntax file
" Language:	Html
" Maintainer:	Jedius <jedinton@gmail.com>

if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
  finish
endif
  let main_syntax = 'html'
endif

syn case ignore

syn match spaceTabs /   \zs\ \ze   / display
syn match spaceTabs /^ \{1}\ze   / display

"syn match text "\ [A-Za-z0-9]\+" contains=jadeTag

"todo: font
syn keyword htmlTag abbr acronym address applet area b base
syn keyword htmlTag basefont bdo big blockquote body br button
syn keyword htmlTag caption center cite code col colgroup dd del
syn keyword htmlTag dfn dir div dl dt em fieldset form frame
syn keyword htmlTag frameset h1 h2 h3 h4 h5 h6 head hr html img
syn keyword htmlTag iframe img input ins isindex kbd label legend li
syn keyword htmlTag link map menu meta noframes noscript ol optgroup
syn keyword htmlTag option p param pre q s samp script select small
syn keyword htmlTag span strike strong style sub sup tbody td
syn keyword htmlTag textarea tfoot th thead tr tt ul u var
syn match htmlTag "\<table\>"
syn match htmlTag "\ \ \<title\>"
syn match htmlTag "\ \ \<[ais]\>"
syn match htmlTag "\*"
syn match htmlTag "@page\>"

syn match jadeId "id"
syn match jadeClass "class"


"syn keyword htmlArg contained action
"syn keyword htmlArg contained align alink alt archive background bgcolor
"syn keyword htmlArg contained border bordercolor cellpadding
"syn keyword htmlArg contained cellspacing checked class clear code codebase color
"syn keyword htmlArg contained cols colspan content coords enctype face
"syn keyword htmlArg contained gutter height hspace id
"syn keyword htmlArg contained link lowsrc marginheight
"syn keyword htmlArg contained marginwidth maxlength method name prompt
"syn keyword htmlArg contained rel rev required rows rowspan scrolling selected shape
"syn keyword htmlArg contained size src start target text type url
"syn keyword htmlArg contained usemap ismap valign value vlink vspace width wrap
"syn match   htmlArg contained "\<\(http-equiv\|href\|title\)="me=e-1

syn region jadeBrace start="<" end=">" contains=htmlTag,htmlArg,jadeAttr,String,jadeClass,jadeId
syn region String start=/"/ skip=/\\\\\|\\"/ end=/"/
syn region String start=/'/ skip=/\\\\\|\\'/ end=/'/
syn region comment start=/<!--/ end=/-->/


syn region jadeSpecial start="&" end=";" 


if main_syntax == "html"
  syn sync minlines=10
endif


let b:current_syntax = "html"

if main_syntax == 'html'
  unlet main_syntax
endif


" vim: ts=8

