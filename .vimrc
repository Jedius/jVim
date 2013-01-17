"let &runtimepath=&runtimepath . ',' . '~/work/git/jVim'
autocmd VimEnter * silent :!xmodmap ~/work/git/jVim/.Xmodmap

"noremap <F12> :set lines=52 columns=142<cr>
"noremap <s-F12> :set lines=55 columns=142<cr>:!transset 0.95<cr>
set guitablabel=%-0.20t%M

set backspace=2
set backspace=indent,eol,start

set scrolloff=8
set scrolljump=1
set nobackup
set nowritebackup
set noswapfile
set nocompatible

" autocommands
autocmd BufEnter * silent! lcd %:p:h
autocmd VimLeavePre * silent :SessionSaveAs last
"autocmd VimEnter * silent :SessionList
set sessionoptions=buffers

let g:bufExplorerSortBy='fullpath'
let g:bufExplorerSplitRight=1

"settings
"guioptions
    set guioptions-=m " Убрать отображение меню
    set guioptions-=T " Убрать отображение тулбара
    set guioptions-=L " левый скролбар
    set guioptions-=r " правый скролбар
    set guioptions-=b " нижний скроллбар
    set guioptions+=e " gui табы
    "set guioptions+=c
    "set wak=no
"mouse
    set mouse=a
    set mousehide
    "set mouses=i-r:beam,s:updown,sd:udsizing,vs:leftright,vd:lrsizing,m:no,ml:up-arrow,v:rightup-arrow
    set mouses=i-r:beam,s:updown,sd:udsizing,vs:leftright,vd:lrsizing,m:no,ml:up-arrow,v:

"etc
    filetype on
    filetype plugin on
    filetype indent on
    color jed

    "set guifont=Menlo:h13
    "set guifont=Monospace\ 11
    "set guifont=DejaVu\ Sans\ Mono\ 11
    set guifont=WenQuanYi\ Micro\ Hei\ Mono\ 12

    "set keymodel=startsel " выделение шифтом
    set virtualedit=onemore " virtual space
"tabs
    set showtabline=2 " tabs invisible/visible/alwaysVisible
"tabulations
    set tabstop=4
    set shiftwidth=4
    "set smarttab
    set listchars=tab:\|\ " подсветка табов
    set list
    set et " автозамена пробелами
"indents
    set ai " автоотступы для новых строк
    "set smartindent
    "set cin " отступы в стиле Си
"search
    "set showmatch
    set hlsearch " подсвечивать поиск
    set incsearch " показывать результаты при вводе
    set ignorecase " игнорировать регистр
    set smartcase " игнорировать регистр, только если все строчные
"unknowns
    "set lz " ленивая перерисовка экрана при выполнении скриптов
"window
    "set equalalways
    "set lines=55 "columns=205
    set nowrap
    set number
    set helpheight=100

    "set foldenable "nofoldenable
    set nofoldenable "nofoldenable
    set foldmethod=indent 
    "set foldtext=v:folddashes.substitute(getline(v:foldstart),'/\\*\\\|\\*/\\\|{{{\\d\\=','','g') 
"cursor
    set cursorline "hilight line
    "set cursorcolumn "hilight column
    set guicursor=v:ver20
    set guicursor=a:blinkon0

"set softtabstop=4
"set winheight=999

let g:tagbar_type_coffee = {
\ 'ctagstype' : 'coffee',
\ 'kinds' : [
\   'n:namespace',
\   'c:class',
\   'o:object',
\   'm:methods',
\   'f:functions',
\   'i:instance variables',
\   'v:var:1',
\   't:constants',
\   'p:properties'
\ ],
\ 'sro' : ".",
\ 'scope2kind' : {
\   'o' : 'object',
\   'f' : 'function',
\   'm' : 'method',
\   'v' : 'var',
\   'i' : 'ivar',
\   't' : 'constant',
\   'p' : 'property'
\ },
\ 'kind2scope' : {
\  'function' : 'f',
\  'method' : 'm',
\  'var' : 'v',
\  'ivar' : 'i',
\  'object' : 'o',
\  'constant': 't',
\  'property': 'p'
\},
\ 'deffile' : expand('<sfile>:p:h') . '/.vim/coffee.ctags'
\ }

"navigation

    nnoremap <c-left> 15h
    "nnoremap <a-left> B
    nnoremap <a-left> b
    nnoremap <c-right> 15l
    "nnoremap <a-right> W
    nnoremap <a-right> e<right>
    nnoremap <c-up> 6k
    nnoremap <a-up> {
    nnoremap <c-down> 6j
    nnoremap <a-down> }


    inoremap <c-left> <esc>15hi
    inoremap <a-left> <esc><right>bi
    inoremap <c-right> <esc>15li
    "inoremap <a-right> <esc><right>wi
    inoremap <a-right> <esc><right>ei<right>
    inoremap <c-up> <esc>6ki
    inoremap <a-up> <esc>{i
    inoremap <c-down> <esc>6ji
    inoremap <a-down> <esc>}i

    nnoremap <home> ^
    inoremap <home> <esc>^i
    nnoremap <c-home> gg
    inoremap <c-home> <esc>ggi
    nnoremap <end> $<right>
    nnoremap <a-end> $
    nnoremap <c-end> G
    inoremap <c-end> <esc>Gi

"div up/down
    "nnoremap i {
    "nnoremap <c-a-i> 25k
    "nnoremap k }
    "nnoremap <c-k> 25j
    "nnoremap <c-a-k> 25j

"paragraphs
    "nmap } /^[ \t]*$<cr>
    "nmap { ?^[ \t]<cr>

"left
    nnoremap <s-left> vh
    inoremap <s-left> <esc><right>vh
    "nnoremap <s-a-left> <c-v>h
    vnoremap <s-left> h
    "vnoremap <s-a-left> h
    vnoremap <left> <esc>h

    nnoremap <s-home> v^
    vnoremap <s-home> ^
    vnoremap <home> <esc>^

"right
    nnoremap <s-right> vl
    inoremap <s-right> <esc><right>vl
    "nnoremap <s-a-right> <c-v>l
    vnoremap <s-right> l
    "vnoremap <s-a-right> l
    vnoremap <right> <esc>l

    nnoremap <s-end> v<end>
    vnoremap <s-end> <end>
    vnoremap <end> <esc><end>

"up
    nnoremap <s-up> Vk
    inoremap <s-up> <esc><right>Vk
    "nnoremap <s-a-up> <c-v>k
    vnoremap <s-up> k
    "vnoremap <s-a-up> k
    vnoremap <up> <esc>k

"down
    nnoremap <s-down> Vj
    inoremap <s-down> <esc><right>Vj
    "nnoremap <s-a-down> <c-v>j
    vnoremap <s-down> j
    "vnoremap <s-a-down> j
    vnoremap <down> <esc>j

"s-c-row
    nnoremap <s-c-left> vb
    inoremap <s-c-left> <esc><right>vb
    vnoremap <s-c-left> b
    nnoremap <s-c-right> vw
    inoremap <s-c-right> <esc><right>vw
    vnoremap <s-c-right> w
    nnoremap <s-c-up> V6k
    inoremap <s-c-up> <esc><right>V6k
    vnoremap <s-c-up> 6k
    nnoremap <s-c-down> V6j
    inoremap <s-c-down> <esc><right>V6j
    vnoremap <s-c-down> 6j


"pageup/pagedown
    nnoremap <s-pageup> V<pageup>
    inoremap <s-pageup> <esc>V<pageup>
    nnoremap <s-pagedown> V<pagedown>
    inoremap <s-pagedown> <esc>V<pagedown>
    vnoremap <pageup> <esc><pageup>
    vnoremap <pagedown> <esc><pagedown>

" all
    noremap <c-a> <esc>mwggVG


"double brackets
    "inoremap " ""<left>
    "inoremap '  ''<left>
    "inoremap (  ()<left>
    "inoremap {  {}<left>
    "inoremap [  []<left>

"indents
nnoremap <tab> >>
nnoremap <s-tab> <<
vnoremap <tab> >gv
vnoremap <s-tab> <gv
inoremap <s-tab> <esc><<i

nnoremap <return> <s-o><esc>
nnoremap <s-return> <s-o>
nnoremap <c-return> o
inoremap <s-return> <esc>O
inoremap <c-return> <esc>o
noremap <backspace> i<backspace><esc><right>

"auto completions
inoremap <kEnter> <c-n>
inoremap <c-kEnter> <c-p>

" commentings
map <c-f> f<s-c>f
imap <c-f> <esc>f<ins>
imap <c-a-f> <esc>f<s-c>f<right><ins>

    vnoremap x "+x
    vnoremap <c-x> "+x
    vnoremap <s-x> "+dd

    vnoremap c "+y
    vnoremap <c-c> "+y

    vnoremap v <del>"+gPi<right>
    vnoremap <c-v> <del>"+gPi<right>
    vnoremap p <del>"+gpi<right>
    vnoremap <s-v> <del>"+]Pi<right>
    vnoremap <s-p> <del>"+]pi<right>

    inoremap <c-v> <esc><right>"+gP<right>
    inoremap <s-c-v> <esc><right>"+]P<right>
    inoremap <c-p> <esc><right>"+gp<right>
    inoremap <s-c-p> <esc><right>"+]p<right>

    cnoremap <c-v> <c-r>+
    
"undo/redo
noremap <c-z> u
inoremap <c-z> <esc>ui
noremap <a-z> <c-r>
inoremap <a-z> <esc><c-r>i

"file/window
noremap  ,<F1> <c-w>
"inoremap <F1> <c-w>
noremap  <F1> <c-w>w
inoremap <F1> <c-w>w
nnoremap <silent> <s-a-F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:let _s=@/<bar>:%s/^\n\+/\r/<bar>:let @/=_s<bar>:nohl<bar>:w<cr>``
"noremap <F7>

noremap <s-F12> :edit ~/.vimrc <CR>
noremap <c-F12> :edit ~/

nnoremap <a-F12> :syntax clear<CR>:syntax on<CR>:color jed<cr>

noremap <F2> :NERDTreeToggle<CR>
inoremap <F2> <esc>:NERDTreeToggle<CR>
noremap <F3> :TagbarToggle<CR>
inoremap <F3> <esc>:TagbarToggle<CR>
"noremap  <F4> :ConqueTermSplit bash<CR>
"inoremap  <F4> <esc>:ConqueTermSplit bash<CR>


noremap ,t :tabnew<CR>
noremap ,f :NERDTreeToggle<CR>

" switch modes
    "nnoremap <esc> :

    vnoremap <space> <esc><right>i

    "nnoremap <a-space> A
    inoremap <c-space> <ins>

    nnoremap <silent> ` :set nohls<cr>
    inoremap <a-s> <esc><right>/

"nnoremap <c-a-w> 8<c-y>
"nnoremap <c-a-s> 8<c-e>
"inoremap <c-a-w> 8<c-y>
"inoremap <c-a-s> 8<c-e>
"nnoremap <c-a-i> 16<c-y>
"nnoremap <c-a-k> 16<c-e>
"inoremap <c-a-i> 16<c-y>
"inoremap <c-a-k> 16<c-e>
"nnoremap <k9><c-space> cw
vnoremap R y :execute ":let @/=@\""<CR> :execute "set hlsearch"<CR>
vnoremap r :s///g<left><left>

inoremap <c-s> <ESC>:set nohls<cr>:w<CR><right>


"noremap <c-w> :bdelete<cr>
"inoremap <c-w> :bdelete<cr>
"noremap <c-a-w> :q!<CR>
inoremap <c-a-w> <esc>:q<CR>
"inoremap <c-a-w> <esc>:q!<CR>


set hidden

"nnoremap1
    nnoremap q :bp<cr>
    nnoremap w :BufExplorer<cr>
    nnoremap e :bn<cr>
    nnoremap r :e .<CR>
    nnoremap t r
    nnoremap y %
    "nnoremap u
    "nnoremap i
    "nnoremap o
    nnoremap p "+gp<right>
    "nnoremap [
    "nnoremap ]

    nnoremap a za
    nnoremap z zA
    nnoremap s /

    nnoremap dw Bdw
    nnoremap da J
    nnoremap ds ^d$
    nnoremap d<space> ciw
    nnoremap d<left> db
    nnoremap d<right> dw

    "nnoremap f :nerdcommenter TODO

    nnoremap g `
    nnoremap gg ``
    nnoremap gt gg

    "nnoremap h
    "nnoremap j
    "nnoremap k
    "nnoremap l
    "nnoremap ;
    "nnoremap ' surround TODO
    "nnoremap \ leader TODO

    "nnoremap z

    nnoremap xs ^"+d$
    nnoremap xx "+dd
    nnoremap x<left> "+db
    nnoremap x<right> "+dw
    nnoremap x<home> "+d^
    nnoremap x<end> "+d$

    nnoremap cs mL^"+y$`L
    nnoremap cc "+yy
    nnoremap c<left> "+yb
    nnoremap c<right> "+yw
    nnoremap c<home> "+y^
    nnoremap c<end> "+y$

    nnoremap v "+gP<right>
    nnoremap b :set hls<cr>N
    nnoremap n :set hls<cr>n
    nnoremap m m
    "nnoremap , TODO
    nnoremap . .
    "nnoremap /

    nnoremap <f5> :SessionSaveAs 
    nnoremap <f8> :SessionList<cr>
    nnoremap <F9> <c-O>
    nnoremap <F10> <c-I>

    nnoremap <space> i

"nnoremap2
    nnoremap Q :b#<cr>
    nnoremap E :b 
    nnoremap P "+]p<right>

    nnoremap A zR
    nnoremap S :lvim /\<\(\)\>/g **<left><left><left><left><left><left><left><left><left>

    nnoremap Z zM
    nnoremap X "+dd
    nnoremap C yyp
    nnoremap V "+]P<right>
    nnoremap N :set hls<cr>*N

    nnoremap M :MarksBrowser<cr>

"nnoremap3
    nnoremap <c-q> :tabprev <CR>
    nnoremap <c-w> :Kwbd<cr>
    nnoremap <c-e> :tabnext <CR>
    nnoremap <c-r> :tabnew<CR>:e .<cr>

    nnoremap <c-s> :set nohls<cr>:w<CR>
    nnoremap <c-d> dd

    nnoremap <c-v> "+gP<right>

    nnoremap <c-space> R

"nnoremap alt
    nnoremap <silent> <a-q> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
    nnoremap <a-w> :q<CR>
    nnoremap <silent> <a-e> :execute 'silent! tabmove ' . tabpagenr()<CR>
    nnoremap <a-r> :FufMruFile<cr>
    nnoremap <a-n> :lw<cr>

"inoremap1
    inoremap <esc> <esc><right>
    inoremap <f5> <esc>:SessionSaveAs 
    inoremap <f8> <esc>:SessionList<cr>

"inoremap2
    inoremap <c-q> <esc>:tabprev<CR>
    inoremap <c-w> <esc>:Kwbd<cr>
    inoremap <c-e> <esc>:tabnext <CR>
    inoremap <c-r> <esc>:tabnew<CR>:e .<cr>
    inoremap <c-d> <esc>ddi

"inoremap3
    inoremap <silent> <a-q> <esc>:execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
    inoremap <silent> <a-e> <esc>:execute 'silent! tabmove ' . tabpagenr()<CR>

"inoremap4
    inoremap  <c-a-q> <esc>:tabprev <CR>
    inoremap  <c-a-e> <esc>:tabnext <CR>

"vnoremap control
    vnoremap <c-s> <esc>:w<cr><right>

"noremap  <c-a-r> <esc>:tabnew<CR>:e .<CR>
"inoremap  <c-a-r> <esc>:tabnew<CR>
"inoremap  <c-a-r> <esc>:tabnew<CR>:e .<CR>
"noremap  <s-r> :e .<CR>
"nnoremap <a-r><a-r> :FufFileWithFullCwd<cr>





nnoremap ,x ggVG:!tidy -q -i --indent-spaces 4 --wrap 500 --show-errors 0<CR><cr>

"nnoremap <a-w> m

nnoremap ,, mL<end><right>i,<esc>`L

nnoremap ; :



" filetypes
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufNewFile,BufRead *Cakefile set filetype=coffee
autocmd BufNewFile,BufRead *.coffeekup set filetype=coffee

autocmd BufNewFile,BufRead *.styl set filetype=stylus
autocmd BufNewFile,BufRead *.scss set filetype=stylus
autocmd BufNewFile,BufRead *.less set filetype=less

"autocmd BufNewFile,BufRead *.jade set filetype=jade


autocmd BufNewFile,BufRead * set formatoptions-=c formatoptions-=r formatoptions-=o



"Mac
"noremap  <d-s> :w<CR>
"inoremap <d-s> <ESC>:w<CR><right>
"set transparency=5

"TODO
"recording
"named bufers (copy,edit)  cz1, cz2, xz1, xz2, zv1, zv2
" cc to another bufer

"set wildchar=<f5> wildmenu wildmode=full
"set wildcharm=<f6>
"nnoremap <f7> :b <f6>

":nnoremap <F5> :buffers<CR>:buffer<Space>

"nnoremap <f5> :MiniBufExplorer<cr>
"let g:miniBufExplVSplit=20
"let g:miniBufExplSplitBelow=2

"scroll

	"noremap <a-s-left> <ScrollWheelLeft>
	"noremap <a-s-right> <ScrollWheelRight>

	noremap <a-s-left> 6z<left>
	noremap <a-s-right> 6z<right>
	noremap <a-s-up> 4<c-y>
	noremap <a-s-down> 4<c-e>

syntax on

noremap <silent> <F10> :set lines=55 columns=213<cr>:!transset 0.95<cr><cr>


" j - for immediate going
":lvim /\<\(\)\>/gj <left><left><left><left><left><left><left><left>
