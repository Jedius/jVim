" Language:    Stylus
" Maintainer:  Jedius <jedinton@gmail.com>

if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1

"setlocal formatoptions-=t formatoptions+=croql
setlocal comments=://
setlocal commentstring=//\ %s
setlocal omnifunc=csscomplete#CompleteCSS
