" Vim color file
" Maintainer: Robby Colvin
" Last Change: 2010-04-30
" Version: 0.1
" based on 'ego' theme for Xcode:
" http://developers.enormego.com/view/xcode_ego_theme

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "jed"

" GUI Colors

hi Normal               gui=NONE guibg=#18191f guifg=#bbdd77

hi Cursor               gui=none guibg=#0000ff guifg=NONE
hi CursorIM             gui=bold guibg=#ffffff
hi CursorLine           gui=NONE guibg=#000000
hi CursorColumn         gui=NONE guibg=#000000
hi Directory            gui=NONE guifg=#82c057 guibg=bg


hi DiffAdd              gui=NONE guifg=fg      guibg=#18193f
hi DiffChange           gui=NONE guifg=fg      guibg=#38191f
hi DiffDelete           gui=NONE guifg=fg      guibg=#000000
hi DiffText             gui=bold guifg=fg      guibg=bg



hi ErrorMsg             gui=NONE guifg=#FFFF99 guibg=#FF0000
hi VertSplit            gui=NONE guifg=#28282f guibg=#28282f
"hi Folded               gui=bold guibg=#15161a guifg=#b0d0e0
hi Folded               gui=bold guibg=bg      guifg=#555555
hi FoldColumn           gui=NONE guibg=#305060 guifg=#b0d0e0
hi IncSearch            gui=reverse guifg=fg guibg=bg
hi LineNr               gui=NONE guibg=#111111 guifg=#686868
hi MatchParen 			gui=bold guibg=bg guifg=#ffff00
hi ModeMsg              gui=NONE guibg=#82c057 guifg=#C8F482
hi MoreMsg              gui=bold guifg=#C8F482 guibg=bg
hi Question             gui=bold guifg=#C8F482 guibg=bg
hi Search               gui=NONE guibg=#95D5F1 guifg=#18191F
hi SpecialKey           gui=NONE guibg=bg guifg=#38383f
hi StatusLine           gui=bold guibg=#484848 guifg=#000000
hi StatusLineNC         gui=NONE guibg=#686868  guifg=#E0E0E0
hi Title                gui=bold guifg=#9d7ff2 guibg=bg
hi Visual               gui=none guibg=#555555 
hi VisualNOS            gui=bold,underline guifg=fg guibg=bg
hi WarningMsg           gui=bold guifg=#FF0000 guibg=bg
hi WildMenu				gui=bold guibg=bg guifg=#000000
hi Pmenu                guibg=#e38081 guifg=#ffffff
hi PmenuSel             guibg=#3D4646 guifg=#ffffff
hi NonText              guibg=bg guifg=#29191f
hi Scrollbar            guibg=bg
hi ColorColumn          guibg=#3D4646

" General Syntax Colors

hi spaceTabs       gui=NONE   guibg=#222226
hi text            gui=italic   guifg=#bbddaa

" My
hi def RedB             gui=bold    guifg=#fb3333
hi def OrangeB           gui=bold    guifg=#fbfb33
hi def PinkB            gui=bold    guifg=#fb33fb
hi def PinkBL            gui=bold    guifg=#fb66fb


hi reserverWords        gui=BOLD    guifg=#C67C48


hi def jQuery           gui=bold   guifg=#aaaaff
hi def jArrow           gui=BOLD   guifg=#cccc55
hi def jBracket         gui=bold   guifg=#ffff44
hi def jBrace           gui=BOLD   guifg=#aaaadd
hi def jEvent           gui=BOLD   guifg=#86c5d1

hi Conditional          gui=bold    guifg=#c9f944 guibg=bg
hi def jCondTrue        gui=BOLD,italic   guifg=#ffaa44
hi def jCondFalse       gui=BOLD,italic   guifg=#ff7733

hi def jString          gui=italic guifg=#ddfdcc guibg=bg

hi def jObjString       gui=italic guifg=#9999bb guibg=bg
hi Identifier           gui=none guifg=#aaaacc guibg=bg

hi def jVar             gui=bold guifg=#78bc34 guibg=bg
hi Constant             gui=bold guifg=#78bc44 guibg=bg


" strings
hi Comment              gui=italic guifg=#777777 guibg=bg
hi Todo                 gui=bold guifg=#999999 guibg=bg

hi Special              gui=bold guifg=#729FC5 guibg=bg
hi Structure            gui=BOLD guifg=#86c5d1 guibg=bg

hi def jObject           gui=BOLD   guifg=#75b5d6 guibg=bg
hi def jSubObject        gui=NONE   guifg=#85c5d1 guibg=bg
hi def jObjProperty      gui=italic guifg=#65cfa1 guibg=bg

" chars
hi Delimiter            gui=NONE guifg=#56757d guibg=bg
hi Operator             gui=bold guifg=#25913A guibg=bg
hi SpecialChar          gui=bold guifg=#B3CD70 guibg=bg

" keywords
hi Keyword              gui=bold,italic  guifg=#aaaaff guibg=bg
hi Repeat               gui=BOLD    guifg=#C67C48 guibg=bg
hi Statement            gui=NONE    guifg=#F6DA7B guibg=bg
hi Type                 gui=NONE    guifg=#82c057 guibg=bg
hi Exception            gui=BOLD    guifg=#C67C48 guibg=bg
hi jsWords              gui=BOLD    guifg=#eeee44 guibg=bg

" vars
hi PreProc              gui=NONE    guifg=#C67C48 guibg=bg

" var types
hi String               gui=italic guifg=#ddfdcc guibg=bg
hi Number               gui=NONE guifg=#ffff33 guibg=bg
hi Float                gui=NONE guifg=#ffff44 guibg=bg
hi Boolean              gui=none guifg=#ffa500 guibg=bg


" jade
"hi jadeTag              gui=none guifg=#eeeedd guibg=bg
hi jadeTag              gui=bold guifg=#ffff99 guibg=bg
hi htmlTag              gui=bold guifg=#ffaa55 guibg=bg
hi jadeId               gui=none guifg=#ffff00 guibg=bg
hi jadeClass            gui=none guifg=#ffaa33 guibg=bg
hi htmlArg              gui=none guifg=#ffaaaa guibg=bg
hi jadeBrace            gui=none guifg=#aaaadd guibg=bg
hi jadeSpecial          gui=italic guifg=#bbdd99 guibg=bg


" stylus
hi Tag                  gui=bold guifg=#eeee55 guibg=bg
hi id                   gui=bold guifg=#eeee00 guibg=bg
hi class                gui=bold guifg=#ffaa33 guibg=bg
hi cssSelf              gui=bold guifg=#ffff88 guibg=bg
hi cssPseudo            gui=bold,italic guifg=#ffff88 guibg=bg
hi cssAttributeSelector gui=none guifg=#ffcc33 guibg=bg

hi important            gui=bold guifg=#ff4444 guibg=bg

hi cssColorAttr         gui=italic guifg=#eebb22 guibg=bg
hi length               gui=italic guifg=#eeee33 guibg=bg
hi fontAttr             gui=italic guifg=#ffff55 guibg=bg
hi cssRenderAttr        gui=italic guifg=#ffff99 guibg=bg
hi cssUIAttr            gui=italic guifg=#ffff99 guibg=bg
hi cssBoxAttr           gui=italic guifg=#eeee33 guibg=bg
hi cssTableAttr           gui=italic guifg=#eeee33 guibg=bg
hi cssTextAttr          gui=italic guifg=#eeee77 guibg=bg
hi cssCommonAttr        gui=italic guifg=#eeee55 guibg=bg

hi colorProp            gui=none guifg=#9999ff guibg=bg
hi cssBoxProp           gui=none guifg=#ffbbff guibg=bg
hi cssTableProp         gui=none guifg=#ffbbff guibg=bg
hi fontProp             gui=none guifg=#ffffff guibg=bg
hi cssRenderProp        gui=none guifg=#ffbbbb guibg=bg
hi cssUIProp            gui=none guifg=#ffbbbb guibg=bg
hi cssTextProp          gui=none guifg=#eeeeff guibg=bg


hi Character            gui=NONE guifg=#9d7ff2 guibg=bg
hi Macro                gui=NONE guifg=#F6DA7B guibg=bg
hi Label                gui=NONE guifg=#F6DA7B guibg=bg
hi Define               gui=NONE guifg=#F6DA7B guibg=bg
hi StorageClass         gui=NONE guifg=#95D5F1 guibg=bg
hi Typedef              gui=NONE guifg=#95D5F1 guibg=bg
hi Function             gui=NONE guifg=#82c057 guibg=bg


hi SpecialComment       gui=NONE guifg=#55747c guibg=bg
hi Debug                gui=NONE guifg=#55747c guibg=bg

hi Include              gui=NONE    guifg=#C67C48 guibg=bg
hi PreCondit            gui=NONE    guifg=#C67C48 guibg=bg

hi Underlined           gui=underline guifg=#C8F482 guibg=bg
hi Ignore               guifg=#55747c
hi Error                guifg=#FFFF99  guibg=#FF0000

