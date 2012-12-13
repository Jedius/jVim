" Vim syntax file
" Language:	Stylus
" Maintainer:	Jedius <jedinton@gmail.com>

if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
  finish
endif
  let main_syntax = 'stylus'
endif

syn case ignore

syn match comment /\/\/.*/ 

syn match spaceTabs /   \zs\ \ze   / display
syn match spaceTabs /^ \{1}\ze   / display

"todo: font
syn keyword tag abbr acronym address applet area a b base
syn keyword tag basefont bdo big blockquote body br button
syn keyword tag caption center cite code col colgroup dd del
syn keyword tag dfn dir div dl dt em fieldset form frame
syn keyword tag frameset h1 h2 h3 h4 h5 h6 head hr html img i
syn keyword tag iframe img input ins isindex kbd label legend li
syn keyword tag link map menu meta noframes noscript ol optgroup
syn keyword tag option p param pre q s samp script select small
syn keyword tag span strike strong style sub sup tbody td
syn keyword tag textarea tfoot th thead title tr tt ul u var
syn match tag "\<table\>"
syn match tag "\*"
syn match tag "@page\>"

syn match id "#[A-Za-z_@][A-Za-z0-9_@-]*"

syn match class "\.[A-Za-z][A-Za-z0-9_-]\+"

syn match cssColorAttr "\<transparent\>"
syn match cssColorAttr "\<white\>"
syn match cssColorAttr "#[0-9A-Fa-f]\{3\}\>"
syn match cssColorAttr "#[0-9A-Fa-f]\{6\}\>"
syn match cssColorAttr "\<rgb\s*(\s*\d\+\(\.\d*\)\=%\=\s*,\s*\d\+\(\.\d*\)\=%\=\s*,\s*\d\+\(\.\d*\)\=%\=\s*)"
syn keyword cssColorAttr aqua black blue fuchsia gray green lime maroon navy olive purple red silver teal yellow
syn keyword cssColorAttr center scroll fixed
syn match cssColorAttr "\<repeat\(-[xy]\)\=\>"
syn match cssColorAttr "\<no-repeat\>"


syn match length "[-+]\=\d\+\(\.\d*\)\=\(%\|mm\|cm\|in\|pt\|pc\|em\|ex\|px\)"

syn match important "!\s*important\>"

syn match colorProp "\<color\>[\ :]"
syn match colorProp "\<background\(-\(color\|image\|attachment\|position\)\)\=\>[\ :]"

syn match cssBoxProp "[^-]\<\(margin\|padding\|box\|border\)\(-\(top\|right\|bottom\|radius\|shadow\|left\)\)\=\>[\ :]"
syn match cssBoxProp "\<border-\(\(\(top\|right\|bottom\|left\)-\)\=\(width\|color\|style\)\)\=\>[\ :]"
syn match cssBoxProp "\<\(width\|z-index\)\>[\ :]"
syn match cssBoxProp "\<\(min\|max\)-\(width\|height\)\>[\ :]"
syn keyword cssBoxProp width height float clear overflow clip visibility

syn keyword cssBoxAttr thin thick both
syn keyword cssBoxAttr dotted dashed solid double groove ridge inset outset
syn keyword cssBoxAttr hidden visible scroll collapse

syn match fontProp "\<font\(-\(family\|style\|variant\|weight\|size\(-adjust\)\=\|stretch\)\)\=\>"
syn match fontAttr "\<\(sans-\)\=\<serif\>"
syn match fontAttr "\<small\(-\(caps\|caption\)\)\=\>"
syn match fontAttr "\<x\{1,2\}-\(large\|small\)\>"
syn match fontAttr "\<message-box\>"
syn match fontAttr "\<status-bar\>"
syn match fontAttr "\<\(\(ultra\|extra\|semi\|status-bar\)-\)\=\(condensed\|expanded\)\>"
syn keyword fontAttr cursive fantasy monospace italic oblique
syn keyword fontAttr bold bolder lighter larger smaller
syn keyword fontAttr icon menu
syn match fontAttr "\<caption\>"
syn keyword fontAttr large smaller larger
syn keyword fontAttr narrower wider

syn match cssRenderProp "\<\(display\|marker-offset\|unicode-bidi\|white-space\|list-item\|run-in\|inline-table\)\>"
syn keyword cssRenderProp position top bottom direction
syn match cssRenderProp "\<\(left\|right\)\>"
syn match cssRenderAttr "\<marker\>"
syn keyword cssRenderAttr block inline compact
syn match cssRenderAttr "\<table\(-\(row-gorup\|\(header\|footer\)-group\|row\|column\(-group\)\=\|cell\|caption\)\)\=\>"
syn keyword cssRenderAttr static relative absolute fixed
syn keyword cssRenderAttr ltr rtl embed bidi-override pre nowrap
syn match cssRenderAttr "\<bidi-override\>"

syn match cssTextProp "\<\(\(word\|letter\)-spacing\|text\(-\(decoration\|transform\|align\|index\|shadow\)\)\=\|vertical-align\|unicode-bidi\|line-height\)\>"

syn match cssTextAttr "\<line-through\>"
syn match cssTextAttr "\<text-indent\>"
syn match cssTextAttr "\<\(text-\)\=\(top\|bottom\)\>"
syn keyword cssTextAttr underline overline blink sub super middle
syn keyword cssTextAttr capitalize uppercase lowercase center justify baseline sub super

syn keyword cssCommonAttr auto none inherit
syn keyword cssCommonAttr top bottom
syn keyword cssCommonAttr medium normal

syn keyword cssUIProp cursor
syn match cssUIProp "\<outline\(-\(width\|style\|color\)\)\=\>"

syn match cssUIAttr "\<[ns]\=[ew]\=-resize\>"
syn keyword cssUIAttr default crosshair pointer move wait help
syn keyword cssUIAttr thin thick
syn keyword cssUIAttr dotted dashed solid double groove ridge inset outset
syn keyword cssUIAttr invert

syn match cssTableProp "\<\(caption-side\|table-layout\|border-collapse\|border-spacing\|empty-cells\|speak-header\)\>"
syn keyword cssTableAttr fixed collapse separate show hide once always

syn match cssSelf "&"

syn match cssPseudo "[:\ ]\<\(link\|visited\|active\|hover\|focus\|before\|after\)\>"
syn match cssPseudo "\<first\(-\(line\|letter\|child\)\)\=\>"

syn region cssAttributeSelector start="\[" end="]"



"syn match cssSelectorOp "[+>.]"
"syn match cssSelectorOp2 "[~|]\?=" contained
"syn region cssAttributeSelector matchgroup=cssSelectorOp start="\[" end="]" transparent contains=cssUnicodeEscape,cssSelectorOp2,cssStringQ,cssStringQQ



"syn match cssMedia "@media\>" nextgroup=cssMediaType skipwhite skipnl
"syn keyword cssMediaType contained screen print aural braile embosed handheld projection ty tv all nextgroup=cssMediaComma,cssMediaBlock skipwhite skipnl
"syn match cssMediaComma "," nextgroup=cssMediaType skipwhite skipnl
"syn region cssMediaBlock transparent matchgroup=cssBraces start='{' end='}' contains=cssTagName,cssError,cssComment,cssDefinition,cssURL,cssUnicodeEscape,cssIdentifier

"syn match cssValueInteger contained "[-+]\=\d\+"
"syn match cssValueNumber contained "[-+]\=\d\+\(\.\d*\)\="
"syn match cssValueAngle contained "[-+]\=\d\+\(\.\d*\)\=\(deg\|grad\|rad\)"
"syn match cssValueTime contained "+\=\d\+\(\.\d*\)\=\(ms\|s\)"
"syn match cssValueFrequency contained "+\=\d\+\(\.\d*\)\=\(Hz\|kHz\)"

"syn match cssFontDescriptor "@font-face\>" nextgroup=cssFontDescriptorBlock skipwhite skipnl
"syn region cssFontDescriptorBlock contained transparent matchgroup=cssBraces start="{" end="}" contains=cssComment,cssError,cssUnicodeEscape,cssFontProp,cssFontAttr,cssCommonAttr,cssStringQ,cssStringQQ,cssFontDescriptorProp,cssValue.*,cssFontDescriptorFunction,cssUnicodeRange,cssFontDescriptorAttr
"syn match cssFontDescriptorProp contained "\<\(unicode-range\|unit-per-em\|panose-1\|cap-height\|x-height\|definition-src\)\>"
"syn keyword cssFontDescriptorProp contained src stemv stemh slope ascent descent widths bbox baseline centerline mathline topline
"syn keyword cssFontDescriptorAttr contained all
"syn region cssFontDescriptorFunction contained matchgroup=cssFunctionName start="\<\(uri\|url\|local\|format\)\s*(" end=")" contains=cssStringQ,cssStringQQ oneline keepend
"syn match cssUnicodeRange contained "U+[0-9A-Fa-f?]\+"
"syn match cssUnicodeRange contained "U+\x\+-\x\+"

" FIXME: These are actually case-insentivie too, but (a) specs recommend using
" mixed-case (b) it's hard to highlight the word `Background' correctly in
" all situations
"syn case match
"syn keyword cssColor contained ActiveBorder ActiveCaption AppWorkspace ButtonFace ButtonHighlight ButtonShadow ButtonText CaptionText GrayText Highlight HighlightText InactiveBorder InactiveCaption InactiveCaptionText InfoBackground InfoText Menu MenuText Scrollbar ThreeDDarkShadow ThreeDFace ThreeDHighlight ThreeDLightShadow ThreeDShadow Window WindowFrame WindowText Background
"syn case ignore
"syn region cssURL contained matchgroup=cssFunctionName start="\<url\s*(" end=")" oneline keepend
"syn region cssFunction contained matchgroup=cssFunctionName start="\<\(rgb\|clip\|attr\|counter\|rect\)\s*(" end=")" oneline keepend




"syn keyword cssGeneratedContentProp contained content quotes
"syn match cssGeneratedContentProp contained "\<counter-\(reset\|increment\)\>"
"syn match cssGeneratedContentProp contained "\<list-style\(-\(type\|position\|image\)\)\=\>"
"syn match cssGeneratedContentAttr contained "\<\(no-\)\=\(open\|close\)-quote\>"
"syn match cssAuralAttr contained "\<lower\>"
"syn match cssGeneratedContentAttr contained "\<\(lower\|upper\)-\(roman\|alpha\|greek\|latin\)\>"
"syn match cssGeneratedContentAttr contained "\<\(hiragana\|katakana\)\(-iroha\)\=\>"
"syn match cssGeneratedContentAttr contained "\<\(decimal\(-leading-zero\)\=\|cjk-ideographic\)\>"
"syn keyword cssGeneratedContentAttr contained disc circle square hebrew armenian georgian
"syn keyword cssGeneratedContentAttr contained inside outside

"syn match cssPagingProp contained "\<page\(-break-\(before\|after\|inside\)\)\=\>"
"syn keyword cssPagingProp contained size marks inside orphans widows
"syn keyword cssPagingAttr contained landscape portrait crop cross always avoid




"syn match cssAuralProp contained "\<\(pause\|cue\)\(-\(before\|after\)\)\=\>"
"syn match cssAuralProp contained "\<\(play-during\|speech-rate\|voice-family\|pitch\(-range\)\=\|speak\(-\(punctuation\|numerals\)\)\=\)\>"
"syn keyword cssAuralProp contained volume during azimuth elevation stress richness
"syn match cssAuralAttr contained "\<\(x-\)\=\(soft\|loud\)\>"
"syn keyword cssAuralAttr contained silent
"syn match cssAuralAttr contained "\<spell-out\>"
"syn keyword cssAuralAttr contained non mix
"syn match cssAuralAttr contained "\<\(left\|right\)-side\>"
"syn match cssAuralAttr contained "\<\(far\|center\)-\(left\|center\|right\)\>"
"syn keyword cssAuralAttr contained leftwards rightwards behind
"syn keyword cssAuralAttr contained below level above higher
"syn match cssAuralAttr contained "\<\(x-\)\=\(slow\|fast\)\>"
"syn keyword cssAuralAttr contained faster slower
"syn keyword cssAuralAttr contained male female child code digits continuous


"" FIXME: This allows cssMediaBlock before the semicolon, which is wrong.
"syn region cssInclude start="@import" end=";" contains=cssComment,cssURL,cssUnicodeEscape,cssMediaType
"syn region cssDefinition transparent matchgroup=cssBraces start='{' end='}' contains=css.*Attr,css.*Prop,cssComment,cssValue.*,cssColor,cssURL,cssImportant,cssError,cssStringQ,cssStringQQ,cssFunction,cssUnicodeEscape

"syn match cssPseudoClass ":\S*" contains=cssPseudoClassId,cssUnicodeEscape
"syn region cssPseudoClassLang matchgroup=cssPseudoClassId start=":lang(" end=")" oneline

"syn region cssComment start="/\*" end="\*/" contains=@Spell

"syn match cssUnicodeEscape "\\\x\{1,6}\s\?"
"syn match cssSpecialCharQQ +\\"+ contained
"syn match cssSpecialCharQ +\\'+ contained
"syn region cssStringQQ start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=cssUnicodeEscape,cssSpecialCharQQ
"syn region cssStringQ start=+'+ skip=+\\\\\|\\'+ end=+'+ contains=cssUnicodeEscape,cssSpecialCharQ

if main_syntax == "stylus"
  syn sync minlines=10
endif


let b:current_syntax = "stylus"

if main_syntax == 'stylus'
  unlet main_syntax
endif


" vim: ts=8

